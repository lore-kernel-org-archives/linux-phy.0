Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53184C44515
	for <linux-phy@archiver.kernel.org>; Fri, 17 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gFSKSUYEjjcAkkEbOqqtwXKk2WzyCdQUpOb6shzvdhw=; b=BAyeDYC6YKow27
	w11JRGd/PZitm0qQcdU5BtQv4ihs9sQBIG3P94psY1MO22yogwSy/FjQ3ubGxsfEgtCByu83zJVK5
	hv9+KDalImrxWEovC7VUL7csnxxU9fhxUp+wSdoFsKNCrg9w2qTCdpTc83lwAp6rhWeU8UbiNoQZq
	680klozoJHjlbHhcNh8ogqelJxPUOBpPGig1keh6vQizdn/Gd+iORW/6ToIsIIrcR6LfGMRjwdlJE
	k6g3WBHR8LjR/YSh+0FGHhIFFTW/Sg415JUvc1l8vn4w6dOJXnJTCR3cFQTIV+xDTbd1nR6IZIKvu
	DWIq8gSZIKC1ctKMttCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkllg-00000002msU-30f3;
	Fri, 17 Jul 2026 16:50:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wklle-00000002ms0-1VBb
	for linux-phy@lists.infradead.org;
	Fri, 17 Jul 2026 16:50:31 +0000
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66HGoDG62496828
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 16:50:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9fk9Wr8mMEviSNk4R/L0xQW2zH3u8LyETjvs5hgvYRQ=; b=cIhDHfERbEOt/8x8
	4l/xF+/nQXw2DHQY4lbUGOhlByvzaL0arXOzWSuM3T5ID89XPaFV0e62Hj8S+x3T
	1WxZVjq7Rnvj5VVCfyS3jvxoA3YN3x/gwthi1seepqdsmlukkqIpSksSMQJmCi6m
	oGLWmTDrQuc18q960HyhjHSpu15jdYyd6rW5QkqDdfEnaVeqSx+d3ekpXLje6QYS
	B7cpvQjzMOH+uibOXJ8yZEw2P/1L6G0wpx814wFLXB/bi8JNV81T/DLzikKttoap
	wq7VsskAZXxiesdFIrhfBcMJwP/EBgKIlWN8Pzd1OPqD62lULaBs/zhAu4mfSRdQ
	ZW6Rjw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ffe0utr9f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 16:50:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-51bfa45b280so18632821cf.3
        for <linux-phy@lists.infradead.org>; Fri, 17 Jul 2026 09:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1784307028; x=1784911828; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=9fk9Wr8mMEviSNk4R/L0xQW2zH3u8LyETjvs5hgvYRQ=;
        b=DyuKWXpCi0YPjC2vbv1A6JV9yr/wXwGDbrMMDVni5iv0cnGFcFaOdt6VfBicQE878h
         +0YsKyHbyC+JjixG1j6b04JNfOxsb1Dm7chC9ykEEc6r33gAy4y/bm5RunSv2CGDO+C4
         iM4127Z/ZHtme0djtWqH6xaUgVUfmmACPjSc+0cHFQnAMDQYjo8fl8yHyeqFUVExcjxS
         zhHJujBYAfQ3KH6IkKEdinUga1t8mESRq/miml1GLO0j2sFfCxbnwIU0utsUKhFv2DJk
         4ANVtHUsvaAj8r8Eh7/lxyPcY5M3inttf6zk1pUuN0upUNQ51rmyGRhAGknPjlCnYLEP
         vdWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784307028; x=1784911828;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9fk9Wr8mMEviSNk4R/L0xQW2zH3u8LyETjvs5hgvYRQ=;
        b=Qi8oPzo0DDjMtMg/R1sYWFUWCL3EQKCsno3+4XaYopqGFSa89eHmQhXvHi6kClsCMT
         4fQmCySkX1OD6GCpuhtt7WTlSDniYuyYRTv/vRkh1bkmnr0XAw3ME169eELX5Dm1vmHQ
         GaqqUD6FjkC1fVJ2HKzvttNNT5ku7KTCbqFbuC9yxrN83SwAnZbnZwaR6oahm2FZZuJJ
         yeYlrlC0UiSwCBZbPxOHLjhCU7SnojUPPAJPbCuylz5ebrWkZavMq+ITQMWglBTh3evA
         YBVtwO+fV9EubMPDGIvK9q0wwvL3+8VZAV8/xi6ciuVWJrvpy36Gil7sQOujIB1DHiaE
         i3AA==
X-Forwarded-Encrypted: i=1; AHgh+Rqjc/aWlTq/QMD47u74AcubNNAP0BisXaEixb5dAL8MDdnbELP+bVTp298Iu8XYwKNq3r4+BhJAKlg=@lists.infradead.org
X-Gm-Message-State: AOJu0YwmAuED8v5NQJi7APlkkXWuliybGOKSpSNVIv9wpVj/IYFrJEaD
	joBGfneMfX/BTP+ltqDy3L6kuTqElbalckuxOAt1ClbMIGmZBV3a39mWdLfJaDRzVP/K2anUXUT
	PExuySmgPP8WwZb9wvJKWW9oxgoNIvvT5Dc+HJR45PiuJPnFKBSs2lIv9ZqofpZAvITA3
X-Gm-Gg: AfdE7cmoojiskgp+x6KPyeoaAUfrpCVunfMwkHcR6XDu29Yhn8iMVPiYYyzWOfQfjYj
	U7amv/Jk8iA6eqFWAYnlmkL88k0iBpv7Uo676PacmVpbN9eIBQR67E2IKa2IywFACLiMaC47nsa
	HxZ7KvEKd/Iif0MQzIpMuUQkTPTSEv5HPQqIJjTc8MsE43Ct7MLmipWKZIc9KupzX5KC3do0+M8
	L4E6A6saATaZXFhowDBjek8QIEYTR8DXOQYysIqgKJU7xMEhJax5Dks4YMR902RFfKmjq8DeaTj
	MGeFSaCe0SjYozEzDGXEPNSJZGGZv+1s+/frHBfO9fNo4gU3ZA3AUn65oH9DxJxDBsMOqvg9EbS
	0Rbw9Rhv/ejVkkArUjfbO51bm
X-Received: by 2002:a05:622a:2596:b0:51c:83f1:bcd4 with SMTP id d75a77b69052e-52138dcb2f6mr25143401cf.0.1784307028341;
        Fri, 17 Jul 2026 09:50:28 -0700 (PDT)
X-Received: by 2002:a05:622a:2596:b0:51c:83f1:bcd4 with SMTP id d75a77b69052e-52138dcb2f6mr25143101cf.0.1784307027875;
        Fri, 17 Jul 2026 09:50:27 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69e6fefcf2bsm999595a12.9.2026.07.17.09.50.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Jul 2026 09:50:26 -0700 (PDT)
Message-ID: <5f20426c-d34e-4d68-ad80-d01e2fc4e33d@oss.qualcomm.com>
Date: Fri, 17 Jul 2026 18:50:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: glymur: Wire PCIe3a/3b to shared
 Gen5x8 PHY
To: Qiang Yu <qiang.yu@oss.qualcomm.com>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260717-glymur_linkmode_0717-v5-0-4f9e87a61463@oss.qualcomm.com>
 <20260717-glymur_linkmode_0717-v5-3-4f9e87a61463@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260717-glymur_linkmode_0717-v5-3-4f9e87a61463@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=deWwG3Xe c=1 sm=1 tr=0 ts=6a5a5d54 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_glEPmIy2e8OvE2BGh3C:22
 a=EUspDBNiAAAA:8 a=fY-M0D_3ktg6uw_8VIMA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzE3MDE3MSBTYWx0ZWRfX07lxN1kFLJ8v
 VqrE5+xw0k0XP51xW+0lj9Wv3RDJwU1mX80SM7dRcWx4srHtOGWMAWRcs2r794gXeKiE7ZemJDR
 TSYEAAxpH8GprVzoer8+v3S/gNb/lgtUPHl1D7kBepBJyRS95sEx69LTpAabHJM6d17CXRGfXgL
 zOhB6tZFxKQ6GEFvsPIYEn0/GelLP5UbWIoFA98tpag0kXMuuKXAazXwza5DM+6oUhVmi5I6FYZ
 g1lnX3qPR7qyLwOJuH2sBVRZMo920exZNrktuCpof+116CtXrfALYQ0IieJwJhn2mbb0XPfMSQd
 +gUytRJcbFj8iqpuhC3uBOT04XGhMdo1+7rMYwPIuy4dy8kx6fSSi8rXtlaXt+ZV4284UhBqeBa
 u+HIA/tvhkQLv02ZheXZgG4swq3UeGkAYUR4CsLUHrzRYcb7r1UMAeBmzd781V0bnXWZZJypkGZ
 sLKX4Kw6rDBMYfLm7Aw==
X-Proofpoint-ORIG-GUID: lwdteeGpECHi3EjD4471_te8geQdxcEk
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzE3MDE3MSBTYWx0ZWRfX6IWs6JBiSRHl
 wXoO4hGkZG4mfAuPViIsYTnhNZ99rn1FoY7NGExdnK5KkUDLTHeLywezkgVgTGANzXerZ6/FNaG
 2mHbfQCoVKhRyivNhswzhZt21LyzRoE=
X-Proofpoint-GUID: lwdteeGpECHi3EjD4471_te8geQdxcEk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-17_05,2026-07-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 bulkscore=0 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607170171
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260717_095030_529932_36D3B085 
X-CRM114-Status: GOOD (  16.26  )
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

On 7/17/26 11:58 AM, Qiang Yu wrote:
> Glymur's PCIe3a and PCIe3b controllers share a single Gen5x8 QMP PHY block
> that can be bifurcated into two independent x4 links, rather than each
> controller owning its own dedicated PHY.
> 
> Add a pcie3_phy node describing the shared PHY block, add the missing
> PCIe3a controller node, and point both PCIe3a's and PCIe3b's port phys
> at &pcie3_phy (index 0 and 1 respectively) so each controller picks up
> its half of the bifurcated PHY. Update the GCC pipe clock parent array
> to reference the new PHY's clock outputs instead of the placeholders.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dtsi |   8 +
>  arch/arm64/boot/dts/qcom/glymur.dtsi     | 336 ++++++++++++++++++++++++++++++-

These changes really shouldn't be in the same commit

>  2 files changed, 342 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> index c12808abbfe1..e8e81bf9a6a1 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dtsi
> @@ -750,6 +750,14 @@ &pcie3b {
>  	pinctrl-names = "default";
>  };
>  
> +&pcie3_phy {
> +	vdda-phy-supply = <&vreg_l3c_e1_0p89>;
> +	vdda-pll-supply = <&vreg_l2c_e1_1p14>;
> +
> +	vdda-refgen0p9-supply = <&vreg_l1c_e1_0p82>;
> +	vdda-refgen1p2-supply = <&vreg_l4f_e1_1p08>;
> +};

This node is disabled

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
