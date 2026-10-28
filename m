Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7C28606A31A
	for <linux-phy@archiver.kernel.org>; Wed, 28 Oct 2026 15:29:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HdK8781a;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=lS1rxH4g;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=T1lA2u2+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=/d4j1PBdgA/Y5MXv9jmKKokqkDkxB+74GalfwoQSHeA=; b=HdK8781ahIauVXnTS5rv4xgQAW
	pc+u6sGk1ZRzof6sfPwrQrug9LhIJ6H3zdvb6o1JLEFfpGudH3wYq6wWlY4POfVZpRuwk5/zqZ+eq
	yLUFXun/3tgIoULzy2ey9kIvxHI0pzlAaQBgin8Ch0fW2xZ8aWPxn4p9EsK7MnErVcOusA3phfcwN
	XYgeq0JA6BlH/QuqqJWcGlNS8ktiXDKLPy1Ok0r6wfd1OBUggR1COPaSJRbdv/gcVjZz9Nos+Av1J
	5Ld4BLRkp81gj4svldF08R42nNjKCW5I8415TXLvg1BrQTWlddwRFjp54sK5ePlNbspmkmENHgOwL
	Aw6k1SFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5aG-00000007Nnz-1v0H;
	Wed, 28 Oct 2026 15:29:00 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM5a8-00000007NhH-1GEi
	for linux-phy@lists.infradead.org;
	Wed, 28 Oct 2026 15:28:59 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69SFA3RQ2568793
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:28:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vt+LWj4JTxLvmvfKCHSS+whi
	9VdAbkeinOtI411OZBc=; b=lS1rxH4gd8sa+mABPrYZM2XB4BKBJaRx5545SSpY
	9qvU8eTk8yRkisoa1vBwzUjS0DKYUC7ZbPmdW+U8oK/Jtwb20aV7bSGtI9NafViI
	hNoq4YalpC4qqgl8Va6coTYBmm0Z6hEPAG0ONkQOAuNzqsT/rcolJqvLb7ywJ0qV
	hYiReKE+glOqBl4W7Es6wpIKly6Y4Mh72klLHAKizGWjvBFrYTDBQyTln8Tbqst3
	7VVSVkKxy7afwQHsfICjmeMe38Lx2zI+js8MJhWWWCtuh/9oviygJRE0UyRXFBhk
	6lukfQp5woYMvlfh/6YmO6REeQensQ64ifs9mVYzoLJvFA==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hk12pv9q6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 15:28:51 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-99076c676cbso291269241.3
        for <linux-phy@lists.infradead.org>; Wed, 28 Oct 2026 08:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793201330; x=1793806130; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=vt+LWj4JTxLvmvfKCHSS+whi9VdAbkeinOtI411OZBc=;
        b=T1lA2u2+sA6Xz/xVPDFI1LvLY3lTaqXulRR2NyxjR6dxc6Q5itodQeV713HBHw7gDR
         Xqxz++0xRBvpas0jUWr9J5ZDQehmXQ9FhAqseg33tankUVVV1HNRwEVcuwCBodfp+EQw
         u7aEf/Jm4JaPCfTpT8vc9hmBkxXmsF8SdW7LXmUy75EQzeUxGapn4PAM/lqFembYsGd6
         alOdK2WndB7Lmo24fOBHOgIkkitkUIeNJ0gqwdS71Jzw7QNZoea8buyzG+xPxALDwqXg
         IXRQVc2mfKr0YEP6JxtFjeF2af4LXodrLa3opJg5bQpPcAVhX5RltBAMVdL6GKfKMp0j
         2j4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793201330; x=1793806130;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=vt+LWj4JTxLvmvfKCHSS+whi9VdAbkeinOtI411OZBc=;
        b=jd0oZPc0DSWbMwfpFjQNQPaRQ1owGHyGwC079SA4IYOxCMiUJ/9mwgIOQMj1jXBpXr
         zpUXwg9Mk+5zZ1mV5uGk1y2PpjvGoOc+i+9F3d1jRaVEw1ridMG/nKKHTJz6SeHRyq+V
         jOxy/pwhz+itVDotMcPYJcL4+i/cLyz8vFOPBaqwRoXhbiOuZm8DHNTZSJ0+PdSIlCYe
         7coGLEUJDb6DJyw63xbKyJN4yNwiAxOdD4ITL2rqvAsZKrLEPX3QCQ+5PBbPpP5fa2A1
         bx0FZoCYHzB4nc4ZPrLlqjcHITiiGyJU2G1gcB2qIOHD6mQMLeKYNX1xEGwcrdWGun9p
         X0oQ==
X-Forwarded-Encrypted: i=1; AKwUvByjVs+anAz+dvexO1J4hWYWt6fWL4xR/Y43NxdupBqcQpOOxYF148YZROrDKx37ueRHOtg8JiuzmxI=@lists.infradead.org
X-Gm-Message-State: AFq9FYI3MsZQyibIBYVndAd4wQWaEMe0UCsJSYDPmeEEkfB6Sa35cxAM
	SsYCRyWi+Uru1yYqW2yEyWYFY6Qh6OICEpx4JwMwLxBRnI1bdjjKIDX4DmEcZDGRgU6sbor0r6w
	WuMl6oQIgfY9MJ+/yyo4PMGuNs6C0/NjYty4Nt2cnJP9FOCW9mTwEa2xhEjJym+Qejhz9
X-Gm-Gg: AYBFou1KCZQq3VMNdruPuWjduXTI6wD9i/ZYEke+c3pFIYuW6Gk536iGbuD8sc+HnTW
	gytMFmamHMqBKHQAEFeXopfSS+qPnKNLIv/t+a4VizC4ZpkuDTooCdcrz6StejEvaCG7/8/xvIL
	Het9sxWXfpIFMlXkmJEOlmjNajqPbxxw/MU0iZhcPjgz0EBt5JhRpN09ZKZuI/rTYCHEcyko0cv
	9DOhcMR1oPKvmkdayi2krhmZiNlpvBRtLw50SPdnNa2IgkGC2BtIS92hmnxztta3NPUwEdQATtA
	Gvc5K0qfxVNt0mxznzrVm/RzaEnqaasu6/qLaz8dLBQWjjsvHsD3KTKQNgEifTZSPlVLApG/l1J
	meb51CO2FftoJinLSL6gjI3OII/2Frew528jA1Q6gnwTqHblG6+dIxtv4zNLUTMEMYw==
X-Received: by 2002:a05:6102:3ed4:b0:7cc:285d:4df8 with SMTP id ada2fe7eead31-7d03a574a3cmr1443080137.12.1793201329952;
        Wed, 28 Oct 2026 08:28:49 -0700 (PDT)
X-Received: by 2002:a05:6102:3ed4:b0:7cc:285d:4df8 with SMTP id ada2fe7eead31-7d03a574a3cmr1443045137.12.1793201329366;
        Wed, 28 Oct 2026 08:28:49 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecdf9bdsm27880107f8f.55.2026.10.28.08.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Oct 2026 08:28:48 -0700 (PDT)
Date: Wed, 28 Oct 2026 17:28:46 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
Cc: Bryan O'Donoghue <bod@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        jeyaprakash.soundrapandian@oss.qualcomm.com,
        Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v23 13/15] arm64: dts: qcom: kaanapali: Add CCI
 controller nodes
Message-ID: <qnxjvwd7phkvxe2gft53i5utnddjfkjyljvisx5wfd2epqh774@4jxv7jqlubs3>
References: <20261028-kaanapali-camss-v23-0-95f250b18612@oss.qualcomm.com>
 <20261028-kaanapali-camss-v23-13-95f250b18612@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261028-kaanapali-camss-v23-13-95f250b18612@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: puXNV4VzFitac7Vo_qyJjbJSYVXfqV0e
X-Authority-Analysis: v=2.4 cv=DtDDa2/+ c=1 sm=1 tr=0 ts=6ae214b3 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Ew9RC34E4BSkZ0FC_vUA:9 a=CjuIK1q_8ugA:10
 a=1WsBpfsz9X-RYQiigVTh:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfX9GJkV8TmplMb
 49TwtUjd1sd2YY2q5x9A4fGnRrFawCjFf/L6EgqdKQVwxfmCd4PRDqNpUrDKZbMiYgvFX3P4YXE
 wFgDMPyrWxIAx/HqdtmqD88ItN+efsisaOXfGeYbPGASTGepufCcXsgTwkgjrgu5kcAVUuSfpsp
 xZfgJDCDg2OrkS77NvF9PmLdMUFl4sLznUM48WzP69neRCH/rSjp5TGO7gPO0x+jxSQf/k+2oAO
 zIkzRnc6Rqo2Vlqsj3txC27WxEyPv13rkrZabY4ytLx7VmhVlRxNnfAk9h0mnvf/euX6Q/09VNj
 0UExY4QfoQe4BLwR4C7y8wER7nM72IrKOWsUWIapCSdPu8e6CEyyNNfrFYyUVDqVkIBrk1bBzOe
 i5cIMLo518egh9dBJghJC5LqHtEs5m4PWhAwRpWB4tpRn4CDVHCgjInaMWAFzuddNEwkylnsygC
 QWVXgyu1/nfQ8F6EpNA==
X-Proofpoint-GUID: puXNV4VzFitac7Vo_qyJjbJSYVXfqV0e
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI4MDA2MSBTYWx0ZWRfXzC6qGx/d+Lfv
 zx24U3exJKqa7olzPQDp3rgBX6TLg5rlEoVTow4jAD1oyl67Z70+/kZ73dLeixtTkfmL7QAqg2Y
 kl7ADJuoGpwF2/bdZ0pvAJ2MhkloUyk=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-28_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 phishscore=0 malwarescore=0
 suspectscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610280061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_082852_408184_24D79E25 
X-CRM114-Status: UNSURE (   9.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.8 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-28 08:20:47, Hangxiang Ma wrote:
> Add the three Camera Control Interface (CCI) controllers present on the
> Kaanapali SoC. Each controller provides two I2C hosts used for camera
> sensor control, so define the controller nodes and their pinctrl states.
> 
> The first bus has two CCI bus master pinouts:
> cci_i2c_sda0 = gpio109
> cci_i2c_scl0 = gpio110
> 
> cci_i2c_sda1 = gpio111
> cci_i2c_scl1 = gpio112
> 
> The second bus has two CCI bus master pinouts:
> cci_i2c_sda3 = gpio113
> cci_i2c_scl3 = gpio114
> 
> cci_i2c_sda4 = gpio107
> cci_i2c_scl4 = gpio160
> 
> The third bus has two CCI bus master pinouts:
> cci_i2c_sda5 = gpio108
> cci_i2c_scl5 = gpio149
> 
> cci_i2c_sda6 = gpio115
> cci_i2c_scl6 = gpio116
> 
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Acked-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
