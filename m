Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 149F8CD5BC9
	for <linux-phy@archiver.kernel.org>; Mon, 25 May 2026 13:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IbEW8cMayawKiWDTEovypIMBmaoDuSEhEsQd5SWT/lQ=; b=tdZxD9sTuDQLy+
	LFjHj+gALYo4iw+PIK3pQN/saXnHKjdjDsCx4eLcOPrF+Mm15x1wPGxweiuxKsO36JWL0oAk+9r5t
	UpF5xqM9sH8occsKcYdI7m9yJL3KY33/b1O2o4SUufeFkNmVAcLWVIHHguV/6DaA4K8gdtR8XyJiz
	rsD91jZr0oOQ9w39WtdsVN8+l9FehKFD8PD2vExxWOpytNxodhKYe7sPPbyYehJc0EI0kr0WWPpDS
	kDt41qLPGA9DC423thfwDB+/iu0WsXqtr2XnldyGZCXsdGRKOCUAMuqnNysrvILsWI+IUUDNDR6Sh
	g2BvUUhAZ91E90yC/Vqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRVAk-0000000HI3T-3VnC;
	Mon, 25 May 2026 13:16:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRVAi-0000000HI2l-2sxF
	for linux-phy@lists.infradead.org;
	Mon, 25 May 2026 13:16:45 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64P79sm91729167
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 13:16:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	u97YqLbcmLlh10lDQSuWmKtQsqDRCwVMztT7iDYcshA=; b=pGUebKqhpMtm76GN
	PkCzhsWW3B2/l2VJDFTjuneFWyarLhRaSyY8PP8GOiFzGcR8v7mn4M6SbCBDo6sX
	vvFrQ425kV/00V/BOLOLaZbqeObzbbm/xImzFRc+mECF1ygDNcvMh6Tpta2KLxsi
	BpWTVMQDHTJpDpmUSLvCJ3+InbnTMy9kWHP7ByoU3lkFFo0oWpik7kPmneIkIZnh
	xQrcpO+eysQcryLvMjnvKw46BEQ2MHiJcVy11s17VksXFOUKONQC/adETAtVKhpW
	p2opz1ulAE5ley0WGUObrVekuyuEYJA42q6doNi0TfAENVzwxAGLSNM3L35WZjq2
	oOY+mg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4eb4asxt80-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 13:16:43 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-914b56f450aso82482385a.2
        for <linux-phy@lists.infradead.org>; Mon, 25 May 2026 06:16:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779715003; x=1780319803; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u97YqLbcmLlh10lDQSuWmKtQsqDRCwVMztT7iDYcshA=;
        b=aGurwHWr2qdcEexYNITUjmLUIJ3G7zVm3/EuSENs8xZyEEoqXH37R3985HgzJcpU9n
         xuwHqCsAcJgWeMHQndmoEBiNSx9jNuwLcCcNNFlZi6aGBVkwIvYJMNGY263BObqy34AS
         F5l27IQutX+OzoB+lxX7p++WHapjqIk6Rvwc7RSEDzquWA1EqCHaeLeop6AYlF5YKlnx
         kmXOumysGqdUX+xjxS3HGDJtf67GI+sTNV7alW1fkavM6/3uovz0bmUWDcRKBpsvazWC
         Bo/ZeIWZ05366WrYdQDHnAHAvxO+CjdlWmg9oYGwqEj2ofim44TOd5Jjwf3jgUvUJXBR
         B6IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779715003; x=1780319803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u97YqLbcmLlh10lDQSuWmKtQsqDRCwVMztT7iDYcshA=;
        b=K+tUEzNvX5IjxDAxAr4ekRuRoFO7ifnOdFGesG3VWDyZYVyb2FKVmKoQeAog4bDwgH
         jWIyyF1+R8qbaZm3IYF+yuYp1YI/vxwUxJXSvdhSBVXBq9FFnQCgsD6Z77xhqgJ1kJe3
         MpiRyDFqt3l+Vwne0Fd1ne3q/Zb/B+3l1Oub9ZHT98sQ/zg5DISd7TG2asEDk75p7MGA
         tnm+OJZYWsueeC4GhXrtIf2kl6TSay9uSBiilQLzuYyYmjUsQve8M9b5JG6bPAToitTd
         YRAJj3ikRvzR6utr93kSupJZvzxyHHCaH92fagYudytUE/Bu75zULLJuXhjp0L4O0TKT
         SvWQ==
X-Forwarded-Encrypted: i=1; AFNElJ8Xfuor6VXJdQ+e8xWf4LmCtlIspV0QF9kEvRZIOf5+eyuonDPbqkV0ymZzF6juDd/419Uc8USrZr8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yz28rQF0raLJ/itwOdXHqbbJ7bhUKAknUm443FmcTfAJbRUeSrz
	kphd4qyJhOxz6/5Gw2VWaZ6OLx0ASSwZQTCgnj6cQoyAjoM5FesGzRnLg/4qqKVSRqvHZnhr32U
	NWwEG+hDzqANROfVdFw8a/m/gF0TmHYk1sxVA19P+TaibYU9ln5P9QiB1Xi0BgTJPho8e
X-Gm-Gg: Acq92OF1MPhSw7vkmyVFtCHEP03ic+Ko6kH5KTs+G3EpCcYkXR3guEPjNDjqoD4Wt34
	Pcyy5JK6UAu024S+a5kD/ZaauwES5IyQjeKoBJzY195yU5xsNf/c6U6rAczVDGko59hatWRxpPa
	TvA1VxppbOpstxxiOh/ZilDZzwaTZyXW6AeYwwD2PkmUcyiUUtPOzG5INCRnq34ctawFW9Cs7yx
	JXitoUubmTCly3FijQA9ftVG2WHB9D1Ton+6kzDgfUyzbbzOfQ+uLPad8LP8PgKUMG3uaTIY/W2
	8gWX7vCWSrquZEAgvZq3ciCP/ZpKcnfq1aGNPa6vnsl2is68enMV3zIy9WKdwQmdVV8b4y9BlOu
	zVlJ/d2XfogXHbRX5vw6fEi1J8ol9skiJSG56AbCKj0t53g==
X-Received: by 2002:a05:620a:2813:b0:908:a758:baae with SMTP id af79cd13be357-914b49fdfc3mr1377840085a.6.1779715002366;
        Mon, 25 May 2026 06:16:42 -0700 (PDT)
X-Received: by 2002:a05:620a:2813:b0:908:a758:baae with SMTP id af79cd13be357-914b49fdfc3mr1377837285a.6.1779715001935;
        Mon, 25 May 2026 06:16:41 -0700 (PDT)
Received: from [192.168.119.254] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-688b72cbbf3sm3903115a12.0.2026.05.25.06.16.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 25 May 2026 06:16:40 -0700 (PDT)
Message-ID: <63752557-6468-4aef-a847-06aa39ce108d@oss.qualcomm.com>
Date: Mon, 25 May 2026 15:16:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/5] arm64: dts: qcom: Add Shikra CQ2390M SoM platform
To: Komal Bajaj <komal.bajaj@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>, Ulf Hansson <ulfh@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-mmc@vger.kernel.org, monish.chunara@oss.qualcomm.com,
        Rakesh Kota <rakesh.kota@oss.qualcomm.com>
References: <20260522-shikra-dt-v3-0-80ffde8a3dc4@oss.qualcomm.com>
 <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260522-shikra-dt-v3-3-80ffde8a3dc4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTI1MDEzNyBTYWx0ZWRfX5IY1F2/QHYfK
 ayarz2AMgtwtxfk0YaEHa3XZlcqPgyJDa08UV84tbw0aNlt8b3OgudMnR48wmKpKbBn7wEU5dB5
 X4ruyZ5Nzn41yqZuKquepICCyWHP/T9o3OaSVRoIGLu2HRLXSkrF9wepkmAsNwIDpYBG1WEDt71
 M51einM+aCvwafYR99uhMae9ugc7WSuoOd62PFPpPJ15YugwMqmaiJN38REEa4f+P7b4qcDbwyx
 wCH8SkHuYLb/oeCbYUQfvRRcBz+ZuusWO4qi9XKUqjxnSZT3dMdNNcU+azLpiFYcDqI35LalrGM
 qMI4GTVrM54ikopVDintxR5CAUzHGRJ0iaSIbucs+qzMbrnpIXXK7H0Qyk/D+YAsqtnp5utxhN7
 D+V6rXnOCFhMb0PTjZDb44c+mMyo+xNdQBx9SApesGy8y6OUgyr8uahSWcoe2OyKouEy7XdaDpz
 4pcXIJOaJtknylpLNEw==
X-Proofpoint-ORIG-GUID: 5HeBrdkW10caA5NIuF2mKC1kjo1R2Gv7
X-Proofpoint-GUID: 5HeBrdkW10caA5NIuF2mKC1kjo1R2Gv7
X-Authority-Analysis: v=2.4 cv=c6ebhx9l c=1 sm=1 tr=0 ts=6a144bbb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=I9A3L-BP1q0m1wO2EfQA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-25_03,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 spamscore=0 malwarescore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605250137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260525_061644_852342_4F5EA9A4 
X-CRM114-Status: GOOD (  11.99  )
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

On 5/22/26 8:02 PM, Komal Bajaj wrote:
> Add device tree include for the CQ2390M variant of the Shikra
> System-on-Module, a compact compute module integrating the Shikra SoC
> and PMIC for IoT applications, designed to mount on carrier boards.
> 
>   - shikra-cqm-som.dtsi: Retail SoM with modem (PM4125 and PM8005 PMIC)
> 
> The DTSI includes the common shikra.dtsi, adds PM4125 and PM8005 PMIC
> regulator definitions specific to this variant.
> 
> Co-developed-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Rakesh Kota <rakesh.kota@oss.qualcomm.com>
> Signed-off-by: Komal Bajaj <komal.bajaj@oss.qualcomm.com>
> ---

[...]

> +/ {
> +	gpio-key {

This is usually 'gpio-keys', reglardless of the amount

> +		compatible = "gpio-keys";
> +		label = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vol_up_n>;

property-n
property-names

in this order, please

[...]

> +&pm4125_resin {
> +	linux,code = <KEY_VOLUMEDOWN>;
> +	status = "okay";

A \n before 'status' is customary

> +};
> +
> +&pm8005_regulators {
> +	status = "disabled";
> +};

?

(also double \n below)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
