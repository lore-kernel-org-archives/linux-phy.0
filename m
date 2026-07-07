Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B1F83C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:39:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lf7gTYsODHKu10gNVKGcXCnb9LsGW7wmGuOZqg6kUdA=; b=xx+ZgSGOxe0O2z
	qD51L+6FdiJCCSR/NyjI581d7jn17YRfbPqRNlG/h9NZ3G6vN4s2exR5L6kKMGpblhYiYATDQSbYX
	sRA/Xh0lWARH3WRupLXlrODYOp3dW1D/Fo851a5IpfUsRWNJNi/50sfC9lryTuxPS21h1IrGoMXKF
	zTmJp3Dq/SwUQtLf3yQ2i7uH8N+by45aNNt1l8/X9P85qJzXSJKSFCqXTEZES+AefwwsiQ6UhtUCM
	0Xj8wwpT1JELw/VHNgXTMlW9oEF5WbnHRTFB+P0oJNCXCX+KbVzR9aqYaqxG3VcvULKFeOEdxuwoM
	PAW8oi+h0hBLgdVy7gAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyX9-0000000E8cb-01Id;
	Tue, 07 Jul 2026 05:39:51 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyX6-0000000E8c9-10i2
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:39:49 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66748rcm2669721
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:39:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PsFzlIWDFW9ufDJ3y8kqOTwL3T/qjE2N2Ba9kxqY9L8=; b=ZZBOJGyyIdQ+k3Xs
	B8ufPh8VDIAjkZceS5Kp8fsEj31YL42T+42IbzUFyZ4Xe9JjMozB6/BG8f3vcQra
	/wtX0s+ajO48sTUiTe4z5rPcDnAfyUoLEXXuv6XS3/hWB2LuduX74fRZXxReP0av
	XfV3fg6jb04J4JhvJKlwZ+lMCHR+U6CJDoLQCP8AGIGASRqCabDUusgvREIqYuuv
	i8QafkKOFtoC9P8pEzKItlJv1LgK4sy6UI17Fp6evgG652tfTl6/cKyKeoVbk0fD
	bYsFbGvR75hqkiFn1foyaPhvq0pMNbhva+JPYZVRULy0HtZ3zC3g96YmY9X2k1jU
	tYVgTw==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f89kgve16-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:39:47 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-c88d7a75507so6324285a12.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402787; x=1784007587; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PsFzlIWDFW9ufDJ3y8kqOTwL3T/qjE2N2Ba9kxqY9L8=;
        b=fGSZ09fvbotzZeRfsgQmLBSRpl9io/03DqB0PZmhe1vcjA0sZ5/MSDySKb5Fg3Cj0G
         TEyJhHYQ1xF40mvOjmp0HTX1FrTdlx0hkteDTBMVqdrGToDAbzmxWlAagJ0XEyqcse+B
         +29EnPFlJafysIW6v/5b9WjxSJpj/1pS47gtnQepHtNI0sd+PV0N64iQGtXu1UaEQCuI
         5QL6WFByfBLaKPec5VH9BpW2xT9glxXqqIbbseEg39n98ZRmkVRzMXMk8gPGhaRUgMBL
         8ZxmoFoFo71II6CHxGPn8XLjlqkWpExlvbiCNOrLtdwMjxSMzYESvzVAQi3CxlLZ2yvr
         eZhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402787; x=1784007587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PsFzlIWDFW9ufDJ3y8kqOTwL3T/qjE2N2Ba9kxqY9L8=;
        b=p0/M6fHuzhblURJ29RV49VbD655p8iHozzcvihTTUr//1l6XYx83d30ARjivl7Sbs4
         tJPKm91vjNqcuAZlS98MR2YJ46L0XN/25QrBfi47iMNTjF6QFJeWTpvy2AGfbIIdlrEZ
         NQ644o+cuvkgXLhMCMDa4l+8+8Y0CkxarTvvCSmqlvcgNqnuNzLyzm3O9kLa2OIzFw3R
         UzoDALCY5W/bd6qrA/kPNTnMz41aTLkrLr2SOp2g4TLA7PgmdAxT8Pjp+yHQfFVZLQlO
         hY3t3Vf9nyz4my9wXc/7xSDsrAmMTdBQheelz0/VHLLwT7gfUhga9stm+XhII4I/giqr
         0Yow==
X-Forwarded-Encrypted: i=1; AHgh+RpDAfg31wWNrsOdPIZUvLzcrko1JZ/hQtuoxMUl91UomKg+dTxx1tpUCtG+6V09jcPqr1fxp9ZxVbY=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx0qBp1VZAua2yjKkyX9/XTvl/BThHSAfdOMG+fC7FWNwguCyte
	uL+wZXwKfWAGPaTK/rGcajXKBb/wTwrr635PnfCWIoFmgbAUqMgNnmJ3DgFXYOQTUgff1PEeOEj
	3zKbMDDlpN3ZhllsKp3ZxGJLlb+jy2FdUTJt3ZJjMtFKDL3t8HpRAwpIzVK1t/MoWFZrP
X-Gm-Gg: AfdE7ckVxHvUCd2pMSZvSsYvoaRaiESqFyxvwo1B65rQXhEwLLuGzu/78XkmDVUKbkZ
	lrAK4lK71YpaL/TJTr/f+YPj4VzGz7xK5YM7pWjaY6eDhtQMhnnwqCBlB6m4CwkqfH6ymFOiIuv
	2fBxWFGt1O3eguJYpImo/Cuo0gm3fI9AqoiWYqbvu853X9Vxen4ThSC0ONQSZr0Mt/VHzB2whcf
	ICYW0yCy23Bxo0BKiDqBz3v8L2pO8gcJd2KSOqU+y4Ui2yaYHCeRQDDyFRfL1zJYUcXPHyaq5Xg
	13Wo/GAjR4e0gj7Qm4Dv3UQJ+QnxodsTJd9F6y3PN8hpvF16r20mYP42aVYzICjJYX4CKKo+aG3
	kkv9IuAi052n7ThsN1XMD/sLdfGUOsEQVPurh475e+DEpox55hLffeEfCNqeeY5mF5OLyya63ya
	ZUb1w4
X-Received: by 2002:a05:6a21:7d04:b0:3bf:a9cb:b794 with SMTP id adf61e73a8af0-3c08eff110emr4454006637.53.1783402787027;
        Mon, 06 Jul 2026 22:39:47 -0700 (PDT)
X-Received: by 2002:a05:6a21:7d04:b0:3bf:a9cb:b794 with SMTP id adf61e73a8af0-3c08eff110emr4453972637.53.1783402786623;
        Mon, 06 Jul 2026 22:39:46 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ca5b3643ecdsm405895a12.24.2026.07.06.22.39.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:39:46 -0700 (PDT)
Message-ID: <86812216-76d0-473a-b1d6-a7a923235755@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 11:09:39 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260630192236.GA222338@bhelgaas>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <20260630192236.GA222338@bhelgaas>
X-Proofpoint-GUID: Vj72BDBNe9UHXeT5pkoaK5PbWCkSRKNA
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX3Nr1bKr4L4yN
 D1/Ot9pL4Z22oITH9ssODDnkpr57StEaJHiKlpBPxRz+bMFB+46Aaf/89GcHyqBThIlOuL9zuja
 mRpQpW16+RupJqWN+/inNQ4rtYEi583Bu4JVx5FYG4QtsqIs0/ltr+wpQj4N8pjgbKzlAWyeaWU
 zPari8cBv2dElwicy8PBO7K2AsQYgjMvw598fpkQqW//8mHmCc4x7rqVhyE/q/C83meEUC51cfW
 C3q+VmT7jo2sg2heicEdG6HmHG7m3jNQK9S/r+VcZXVBDAh8IZN+fMQWnY76Ph+LMlQZ9wR06Bi
 tyjz2H1JUmSOvY6wOI4P2KnKuzR6SZweIytb3Mz/4JJac96mW57u2nrSrvKXKwl3hPstiC1korq
 1CLnnwAVnsLHbpIo4w/JsLq1LkLf2LMotVDbP+YsiT8iYUGtwSMS0JSWQ4k9tUEV+NtGC7CaNj4
 T3eU9WvZyHLLLzt7vcQ==
X-Proofpoint-ORIG-GUID: Vj72BDBNe9UHXeT5pkoaK5PbWCkSRKNA
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX/AeuEC8Nw18k
 QE6rj2w8rl5yyyy4tlVnkjqv7koHc3xidDi4y+oMuSbaROnm59LqdgoeLMthAMS+OII99Qu36Pi
 8rts5Bxod2KMk665qh7xYqdOXmXLALU=
X-Authority-Analysis: v=2.4 cv=c6Sbhx9l c=1 sm=1 tr=0 ts=6a4c9123 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=8PoPPqR4NMsTHzUpfcoA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 clxscore=1015
 adultscore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607070051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_223948_313644_5AE3162D 
X-CRM114-Status: GOOD (  11.70  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 7/1/2026 12:52 AM, Bjorn Helgaas wrote:
> On Wed, Jul 01, 2026 at 12:32:45AM +0530, Sushrut Shree Trivedi wrote:
>> Add devicetree bindings for TC9563 GPIO's which are
>> used to control endpoint power and reset.
> Include context in subject line.  Regrettably, previous commits to
> toshiba,tc9563.yaml don't include that either, but I think something
> like this would be good:
>
>    dt-bindings: PCI: toshiba,tc9563: Add endpoint GPIO bindings
>
> s/GPIO's/GPIOs/
>
> Wrap to fill 75 columns.

ACK'd.

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
