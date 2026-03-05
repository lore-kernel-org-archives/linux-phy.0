Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4CA6EEF33D
	for <linux-phy@archiver.kernel.org>; Thu,  5 Mar 2026 09:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sEPLE1BakTCRrZQCLfCLXRMcgyWAelHOpItmY9GpDME=; b=ifYxSFL717YjGH
	3mtBBVLdX3N/0q+RNiqRsd21mPYOjsYqKEdcjDQC5UOoxvGgH2GCxDa3s1n1A5PSxD4Cy7JrdtRYc
	bYT374yIOv8uThGBRyrc3B51Z0NhbfIQhYS1Fvy458GTYgsRcSDq37xNYZFS2NyBFafKYQD7KVAQy
	gNuzk6XHcPiWLgCTade7Fp82ghRLcnI2XFZEYfnZOljPXxCuK7ELzbkFWVSb6vaoJLfeAFvq8sFB1
	/2M4KB5wNHdUDdkkRWljkGcxNHEDjJfRV/sGKiLk+zTiSz8SqgwST1Fwttr0khj9TGce9uZjcnb49
	N/U+8oeQSK2d6Sh95WFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4k9-00000001KO5-1R6n;
	Thu, 05 Mar 2026 09:11:41 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy4k6-00000001KMT-3QnP
	for linux-phy@lists.infradead.org;
	Thu, 05 Mar 2026 09:11:40 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62596ZVt3473705
	for <linux-phy@lists.infradead.org>; Thu, 5 Mar 2026 09:11:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TypToE/9U/eP/4BcrjqQk96qrNbThgAgULngx0dU9VY=; b=W0Hi5Pu+/Kx9rub3
	1LuwoztTEiyin65jy0AFa9w9CeQosyQeKJh8uCqng/kW+AvyBzw620uEIw8ElxxS
	p7DgJXpyHxlQCgU7ZnXWh1fDC2kEZgsF+bNRtHfjWvvQQP20fzVlblnrbJN5YtJj
	cuXRnfwIw9A1WDVd75f5iR90V/hmIMXMAApDkJvz92wPoO8C6Cah4UDdFm28qxbm
	JkVKYxCSPSIeuDpcvHiSq5co1WnUKQ63+OjUFG3+cpPsRMO9kCFdRbA5AXYlIq+/
	D3NF4cr175vifDznzJXmfwFBgZlGYxgAmz/Vae9OYLQmqMJp28j53fTOD1MekVJb
	WfF0KQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpj1842th-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 09:11:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cb38346fdbso590835985a.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Mar 2026 01:11:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772701897; x=1773306697; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TypToE/9U/eP/4BcrjqQk96qrNbThgAgULngx0dU9VY=;
        b=FS0L6vTWVK3Ioka6gEGdZ/arYLbPOBxUv8+iKhznduPRuPq9O/QeJXMipB2KrvgwG6
         7pmCrWKVOVXgI40+VKZnWJozkdBNh8FLt6SlZB7DhbAJkadTdpNc/9OT9ZZzMHKpd1l/
         VYxng6JGsnPC2bd/CBLnYJTkieGo+T2emg4wW9GX0MOVxoxU8soI2BKn8VwvIb6bkysz
         A4ize1disV2bIV94Ajn2/xck3uB2BemIGotCym4KVOFRZJyzlgrAtIr8EoYQeJMydkmj
         l3GXOEYTKArS9xexhrlkhXd/nRk+it0/416Rc4tlmv/ZlzuLheEgv3sZs0syQ/VJ03JJ
         nqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772701897; x=1773306697;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TypToE/9U/eP/4BcrjqQk96qrNbThgAgULngx0dU9VY=;
        b=VqcKu+l3kLKFpe09uG1LhNgzJV8EYVK38Zlv60ms2Xt1Bc3sLxPWEyWDNYpP7ggkCz
         iSApfcXefSresiVNDZq1/7Aooe7ILAwMqeBf6XMdNUgZg9cKcemWVYO9ZI2N6PzjZMbG
         XfRHPG00fiAROG7HDNKbAIezpazGzlk+cuEkNLUU1tcKOKjMykSheneMIdBbXKAgGZFF
         CVy/1IpOgMEXN/i3awUEOJgzNPm7iRjeSuOWlPkUAFy5Wfuga9fcB3u12J+/pro0b/nJ
         Y3f3XgT50CA/UJ4dY7HwH7c9cUUG87XmWvVe+hDIJ/mIw7HplD+5wrbHlA80s1102Kjl
         WXdA==
X-Gm-Message-State: AOJu0YxYIVElFFRhN5pxXsxO6DQPIGOdWq3wGGhzcCeLqgB53yNVDxyT
	ZoSWeD9fMgOx9su+jgYBck+WYPjag9X+07MVpDIo0vhXKHQEUqFJjeOJE/fz2nZFdo5hLJuMkFj
	Gs5CMYmJEH4vTCVSBG6U4QRxdWq20+99qCwpe4DYHJLCD3+2en1blH55pGIhswTZabVgc
X-Gm-Gg: ATEYQzwXWZcV5ispRGY4zBPQqCuO74t5VE5kd2qDHDygkGYNQM/PMIveA0PXED9cIT/
	jOliiJ5Nt3z4LtkDer/1nHZwbEFZfnNO0itX34GhBgTEeOrhtFSNVowq9dnV4cMOvv1+hSEsV8I
	7Kezx42Ip4UwsY9lFvP2wVC0AtYvc0I7E1qGa8MskJ1uADyKluWJJPFEy4gk7XVgVlnzy1+T1bt
	VnVWh1tfuywHRIL+k3J4aqfoH3v2cTAE2yledpRiJHflDTYGftp+HeHKYqG93zbIhuR7r1Ip67Y
	qdOzfCnAZbfr/dBsZVOpcfo/dKKGHla70DrDoCTgLy9p/sfhLhul1X+/KyUNyNnMZ/iiZ717fdw
	AhdT9A8LaikuTMzVes6vsj/Xwpi6TxWO7VJ7YfWkhjB27MQF0MBvWNQikYMV3KU1N7dt8GvyvDz
	+nubI=
X-Received: by 2002:a05:620a:4156:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cd5afb0224mr487944285a.7.1772701897057;
        Thu, 05 Mar 2026 01:11:37 -0800 (PST)
X-Received: by 2002:a05:620a:4156:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8cd5afb0224mr487942685a.7.1772701896576;
        Thu, 05 Mar 2026 01:11:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-660bf4d8249sm2589351a12.17.2026.03.05.01.11.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 01:11:35 -0800 (PST)
Message-ID: <ebee2fcf-9069-4a9f-ae72-86f4471cd4f3@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 10:11:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH phy-next 22/22] MAINTAINERS: add regex for linux-phy
To: Vladimir Oltean <vladimir.oltean@nxp.com>
Cc: linux-phy@lists.infradead.org, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        linux-can@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-ide@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
        linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org,
        linux-usb@vger.kernel.org, netdev@vger.kernel.org,
        spacemit@lists.linux.dev, UNGLinuxDriver@microchip.com
References: <20260304175735.2660419-1-vladimir.oltean@nxp.com>
 <20260304175735.2660419-23-vladimir.oltean@nxp.com>
 <a8fee1cd-1e69-4a9e-8533-c0988c480fb9@oss.qualcomm.com>
 <20260305085148.7cwo3yflp7vcfldf@skbuf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260305085148.7cwo3yflp7vcfldf@skbuf>
X-Proofpoint-GUID: 9lW_UlB18Dejz8PP1IaxpIWK11eKzVGF
X-Proofpoint-ORIG-GUID: 9lW_UlB18Dejz8PP1IaxpIWK11eKzVGF
X-Authority-Analysis: v=2.4 cv=Ed7FgfmC c=1 sm=1 tr=0 ts=69a948c9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=UIR2zDuwlqQ-mzEo0xkA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDA3MyBTYWx0ZWRfX3eB9zQcm83dZ
 ys4pjGaOcwL4Izf8P68XnhYgfKbufTdHdROCwteqy8hku9NF41dIcREExbi7fcAUnQdfX3MOwXL
 lrUFIGb+OzZJDyugmQDF79eUDW7pR5RLUMDft+kbSkwEFwlFLGRZQGggg5c6aOQGBeKC0Mr0U4M
 G5/FdQoc4LTHhU6AkNuCnLWRaOemUfr1kn/UkTQN/sto5aOeNxVsuCzYwkLI6mOF7dJvLIVdKDd
 FEeEhd+Tf6f6w5GHPzuwzd+BQ1h5j022qbMkVA6mgYFoBE/9bmBVl1BxUOhaitPA6YkesW75Eu9
 qCNAYFyf53n3uo3NLcPgZ3DwAwyK8DPbm0GU8wdj3bZe00Wzw2lBCOo3eHOWbZr92AJaQui1x5I
 EPDWzx3x6KlA00FFfdu7Sz5tOcOhw2errueHx7keT54zb9VI4EpUiU2mOP7KUpvpUKApRrQLU+e
 bf1fAVkpGFlfMfDlEGg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 spamscore=0 adultscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 impostorscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050073
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_011138_967304_07711A1B 
X-CRM114-Status: GOOD (  13.13  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

On 3/5/26 9:51 AM, Vladimir Oltean wrote:
> Hello Konrad,
> 
> On Thu, Mar 05, 2026 at 09:39:35AM +0100, Konrad Dybcio wrote:
>>> diff --git a/MAINTAINERS b/MAINTAINERS
>>> index 55af015174a5..bdfa47d9c774 100644
>>> --- a/MAINTAINERS
>>> +++ b/MAINTAINERS
>>> @@ -10713,6 +10713,7 @@ F:    Documentation/devicetree/bindings/phy/
>>>  F:   drivers/phy/
>>>  F:   include/dt-bindings/phy/
>>>  F:   include/linux/phy/
>>> +K:   \b(devm_)?(of_)?phy_(create|destroy|init|exit|reset|power_(on|off)|configure|validate|calibrate|(get|set)_(mode|media|speed|bus_width|drvdata)|get_max_link_rate|pm_runtime_(get|put)|notify_(connect|disconnect|state)|get|put|optional_get|provider_(un)?register|simple_xlate|(create|remove)_lookup)\b|(struct\s+)?phy(_ops|_attrs|_lookup|_provider)?\b|linux/phy/phy\.h|phy-props\.h|phy-provider\.h
>>
>> Would looking for the devm/of_phy_ prefix followed by an open parentheses
>> not suffice for the 'has function call' case, instead of listing all
>> currently present exported functions?
> 
> This would maybe work when you run ./scripts/get_maintainer.pl on a file.
> But I would like it to have good coverage on individual patches too. And
> since the devm/of_phy prefix only matches when you "get" the PHY, not
> "use" it, my fear is we would still be missing out on the most important
> part of the patches.

But that's just '(devm_)?(of_)?phy_[a-z]+\(|includes.h'?

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
