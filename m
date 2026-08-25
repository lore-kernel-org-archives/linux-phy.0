Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56ED8C5DF94
	for <linux-phy@archiver.kernel.org>; Tue, 25 Aug 2026 08:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rq4rJ6nuoL3MUHEg/9IjcvRVbG2lZiRfaq2/EjjJAs0=; b=tGIdDUIJlkcv36
	KHeXkD9HAwvnDPZqNGv6/sfpEE4XAeuPk5fOWD87QdqQmT4U16hR4fgZI2RGvdEmwsh1plRzkrbi8
	EvulQU0XIUI4MPs3HtcPF9PzSECLAbTGOhOJd345+fCDaKpZHw3o0zet2n14ARa15ejM9Ijzz7Oz5
	5/yXbDXUvMM/kgKjuk/+Z3qtbH8GWidYRalBOnMamLfDHowmX0eCdHi/eczAEOoaf34AuXUC9n4cE
	djcvuyDp6EeHePFo8A0e1Oz6wQ/7AfzprEXh6FnlWzuatY4M+eqiE6WGBSkp7hkQ5BUmP5H03hNh+
	SETDhxwpuYOCTjABsE6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymxv-00000000RHr-3qrx;
	Tue, 25 Aug 2026 08:57:08 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wymxq-00000000RH0-3Q4C
	for linux-phy@lists.infradead.org;
	Tue, 25 Aug 2026 08:57:06 +0000
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67P88IZp870468
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 08:57:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HuNVclDcvxSe/4OyhV8OfbkBRNHpKfxrNBlk9ot5xGA=; b=gSI182x9Y39yYgVv
	KrcuchzC2H6leSIV9i7D9Y0OQQ3CrK0TelCNTeh6Y6KWUufbNfJKxz0elugj0/dR
	hWVnnT7j1kBwzwzaH5fRzSTAdHp2W+jOyBpcaesnYZV6o+ZT58BoTW0m+LSo5Cmk
	rwNPwwWMWT16QPFZfSq6rbCC2N/hSPv44eD7qb/ff09RFSUH4ZrBoI1Yr8HBv77X
	JO+8i1ASqOApt40I0qhzSVtlsUy8LZhIXkhNVpztjk1VP0oyPKjjBvK4DU9B5FTj
	W21QoSDcSfsgu7CulGYSgrEoZE8E0W3XVJHz8Kul581Km2JwaFqpEX9+YWaQGkfu
	QJUX5w==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4g8t3du2w0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 08:57:01 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-90a4b2e6b4eso8807526d6.3
        for <linux-phy@lists.infradead.org>; Tue, 25 Aug 2026 01:57:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1787648221; x=1788253021; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=HuNVclDcvxSe/4OyhV8OfbkBRNHpKfxrNBlk9ot5xGA=;
        b=SlSPx4n5ExVcbdvgVCfbZ+TokIJqL8+ebE26wWG2Oe6Qg+EzgY9yiy+RVympMqkWi8
         w5LbS+vDw/X/JtfSY0UdEXQNK/+wGz87mSnCEDNPoVepIjcvtxRsChSAMX0ce+xGhBxd
         NqzLOgHczDFcL2JWAQkmxdAEMe8FDqFUQkgKrDZ2fOwa+tNg8pMjEFkUF8fHCJ9HPm8B
         9Fsr+VDSW1k/wqIa4Qi51G26+BRbggXSDXuxI8s7WC6Q64lObFJVkk7DKY+voN4hR5mc
         cXCCUN6KjiXbqg9U2tZmESpFB0kvjx3NrZO51bnp4UeecE8E+07MD1LfcADcrDlcDWhi
         IfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787648221; x=1788253021;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=HuNVclDcvxSe/4OyhV8OfbkBRNHpKfxrNBlk9ot5xGA=;
        b=k6SYKBEmI3W/cZWs9M1dTFoDZdQOgPjqW5wJjtv42rpy/rhpsZec1pkoBNdAnowq+I
         PMcrXdrEhihFzgQRvYeUCsH341mPFNbzCM0UiO/2/Q5MyVfyVfFFEp3/mBfua8WIbveZ
         ktCRstgSoR/3FzFbxDPjpXJNLHwbDlwT9dYBRSBwYWhSqD4tnC6kIYuoMkiR67MBHFDp
         k0X76AJRjUQhVxeCbo5w3P1m5orHu2Ma/obB9OYCQTk0uotgTd8V5PXDUMW5WoAkgv79
         sswgOd05Z/z7loFntzuyMq5dS3JdthtO+i6slJi26HelIt474lJZqs9jmO9Eft/ApwbB
         DS8w==
X-Forwarded-Encrypted: i=1; AHgh+RqN/EVefqRSIZkpJA93EvirbNxArqG0dzcqMgmze/rFmgJZJss1Vj3O66tin93uWg4cFJNfJyQvaK4=@lists.infradead.org
X-Gm-Message-State: AFuF++lU1471qi7YC9bOJht3Fu0Rjm5uDetjYlHJxIHg8M9haceVpD88
	2fAM78+lv280NKYhGmrixxUIp13+Lz6qYfJXR2N6q40Gaf+DTDb1f3yjNIbcNd5kBm38o1Jxkpx
	cxQmQjOL9i359siaUzXMkV34L40uL9Ozr82ROl+95bjCwkHK02lChrXT+vG2nsTHphG2M
X-Gm-Gg: AR+sD13jJ6QVHXLF6+KRZ/RqBSaruqFWyZLXgBcNohS1jP1Ep89j18ToYl5n/9tej1K
	TFuKm29fjXVgysLodgY+5+90IMY71gJ5nqBzHXIUeJ0EjETgHdx9xBQfY4/3HlyPbRJzvrfoOAE
	c83pmzarv0m+9f+NW7T4Eo1WnZS7/sLjFky9nSe+qc6yjlKMwNIjU+4hZQyEyEHO7nDCYL/jtg5
	vVqTmGJJIaxFX3l26dZqMblq3KSOOQwaCojxsXxbV91WrCq1wzD4zkHpqAiBBrqwT73HXML26/B
	waY+WQCT8vHRLPDcbUWn4xsmkjkR0OA6kubQ7nzvDqiu6lvxdiJHQR1fD6eXX5+HCHuUDdNuMQr
	LhcBwKC5VTQEyPI9jDhGluTrq
X-Received: by 2002:a05:622a:1102:b0:528:3722:a372 with SMTP id d75a77b69052e-52df5a21c48mr243449561cf.4.1787648220974;
        Tue, 25 Aug 2026 01:57:00 -0700 (PDT)
X-Received: by 2002:a05:622a:1102:b0:528:3722:a372 with SMTP id d75a77b69052e-52df5a21c48mr243449191cf.4.1787648220517;
        Tue, 25 Aug 2026 01:57:00 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c24967459aesm1603574566b.48.2026.08.25.01.56.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Aug 2026 01:56:59 -0700 (PDT)
Message-ID: <892c2f5e-c3dc-47e5-9f57-338315332879@oss.qualcomm.com>
Date: Tue, 25 Aug 2026 10:56:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] phy: qcom: snps-femto-v2: Move PHY init registers to
 config tables
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260824-phy-v1-0-257d68a3210b@oss.qualcomm.com>
 <20260824-phy-v1-4-257d68a3210b@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260824-phy-v1-4-257d68a3210b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: OD-QTrTOvEX30Crf9gJWXPLdZ1RuTcZc
X-Authority-Analysis: v=2.4 cv=OLAXGyaB c=1 sm=1 tr=0 ts=6a8d58dd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=yx91gb_oNiZeI1HMLzn7:22
 a=t8z0oAJ6WeIUDCOA0PEA:9 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: OD-QTrTOvEX30Crf9gJWXPLdZ1RuTcZc
X-Proofpoint-Spam-Info: AW1haW4tMjYwODI1MDA3NSBTYWx0ZWRfX43HAEeGkrZ2p
 FsF2RWnpPaXqVaQwc4BE0Set+WnBhldBN7MPJliOZgQGP91MVOeP/J85ljqyuxg8HW3DytmxBNw
 IA1ad+lZreNDET9oWVcefer0eb68Q6g=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODI1MDA3NSBTYWx0ZWRfX3B0nYwGU+kqZ
 I1DnN1IbPJtnv2Iupk0YC2fXyd26i7J2ZUbaOtxTf3tj1jYJRfwR3SACWp3jXEiYBQphCn1rtdg
 MP99FNsge+S56A322zTfkD7/4nQGrk872m2QbyM2BhDRyeRYaoKe8SAX/rUdr6OZzEM5x28/5ST
 12VtlWXv2yapaEVQBU3Dagj2WhEQcA6LjsUOCEYrVnA1GH/PFmbdORWihf/PFn2S4nWnelIJL7c
 rHMGvxZ29hHGO5o03ce/HbqWdm4yoiwasOzj8+pXR3+hDApe4XYXf/OYTC1VrYAss2DmA+OpSOX
 XEelYbQ60/fZDV888lO1XwJRYSHntF5u0jeZUFUI9WUQ9QuGw5rk2fAYywj16I5tJW/N7GycxHd
 Use0kdqTBk6wfT2AF3NCIUNQZw4MlGPBV46QthF0S94OvCFgNh/4vkdbpWpEIdhYwRImquWLNbJ
 UuMvE7SiSQxgByP6fuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-25_02,2026-08-24_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 suspectscore=0
 priorityscore=1501 spamscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608250075
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_015705_235340_A6650986 
X-CRM114-Status: GOOD (  10.09  )
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

On 8/24/26 8:37 AM, Varadarajan Narayanan wrote:
> The driver currently programs the common PHY register sequence directly in
> qcom_snps_hsphy_init(), with the fixed register writes split around the
> override parameter handling. This makes it hard to support SoCs that need a
> different sequence or different values.

[...]

> +	{ USB2_PHY_USB_PHY_REFCLK_CTRL, REFCLK_SEL_DEFAULT, REFCLK_SEL_MASK },

This seems to be a pre-existing bug (swapped mask/val)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
