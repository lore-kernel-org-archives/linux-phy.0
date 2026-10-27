Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0977A606A31F
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 11:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=wo/o78wU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=oNYmRbsw;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=IctQIL1w
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Jp1oh+biaX4mYxLn05s404ZMyD8EmTBOAikwPa5YaV0=; b=wo/o78wUj+1xujB81vIjSGagrN
	6jxlO8js9mSAcNtCN7rEy95aHL0H3BOrX75wobCqIHJSYGg+8gwJE2fLRPnJgxDlXX85eJnXZsZAs
	jJRLD/vgmX1gTXuogT+331/ejdEhs2rH841mVbCCvhIck2MiAr2vCnYp5w++1sJiMXN65T7QIzoTS
	vEnxiisoIOc0LuxVtc7zr2s94/Ei8crX9nc9sTqs16ZD4Nc/5Z6WPpR7wJnH2MYtejijt0vH/LY/M
	lY9ZcQ1ddkhdj2u3Fj+Si/S8CVlMGS2LAj6a9nOBuc3WwCedmG+toywmseEwKKCutbJMnvO2NGqbS
	b4vaQuHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf5D-00000004PZT-39pe;
	Tue, 27 Oct 2026 11:11:11 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLf5B-00000004PYr-0Rg9
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 11:11:10 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69RAe06e2523938
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:11:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UAHroLX2yjQ1id1FQtf/by5p
	AgKIpOkaQ4VOiN0W9B4=; b=oNYmRbswuQ/oPnTmO/h0wYB0cK8Lyh0MfwqC0R5Y
	i76tzGsZDHYhJAmY1IyzHl/a0pPY601ciDq6v79CdKT7aaT4LAG2p3BU+yn1mTQK
	NkLA3DPx7b3FL+fmG2dVlyost7/s3pjAVGkfTUJpTB96tzDEsmKikqx5dlSV3nBV
	ZAAZTbYMe87IktsYqzZzwPLISji8HExde6UnHgVg5nAEycSDXqiR0Hw+U71s5J1g
	t7r1yf1t9xIhspG5CBm7019WQb4vkdf2UXDza7uxFxvtfyqd/EWqTuQW67LnDQ0X
	cpkIUUfrnqK/FG7u/MdNe/0GvMH4pFXVX6gatG5p8Ywg/g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hjqw20s3b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 11:11:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f6f4fe531so717395585a.0
        for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 04:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793099467; x=1793704267; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=UAHroLX2yjQ1id1FQtf/by5pAgKIpOkaQ4VOiN0W9B4=;
        b=IctQIL1w25FjNM2sAauealq/n+GItULptcDdbGawpJ6L+TwBuwmqkucJAlACOrW3N3
         xu3FcVB9Cg/0rNQVFp5ZX9g+IandTRyBIQdU0OR5TY8mpv8b/UoyYE98Y8aNzcoZCVg0
         Mv1drN/T0ZtBJdRxiWcIqyrotYs/eM+gDica2zKVx/9pkLfMhJGnok3a31BUkZ1hT34K
         cGN9Sqo6rbORt7qd6pnB2/ZzPhkMOpbbMlIz7JtGN1aaaKQ+vD0YKuR6wMgr1GRA/zYc
         l6Hw7508oZbWVLOGeY/nuBwe96DDQjwnM+TIHKK8mnl3o71BPl1bEk1VdM08aoNYhACN
         vkRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793099467; x=1793704267;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UAHroLX2yjQ1id1FQtf/by5pAgKIpOkaQ4VOiN0W9B4=;
        b=WToXtRyJG7WxyYRP/IhRgP24mjx2h00M98JSjDO1OcjE273t5wcty5NRq3pZ1ZfbSp
         gZIhqV3LytPqQC6beHBcRcTh/N6vB4zqSx6DagKJj8z9fpxNkeC9npNS3RTouAUYAd7K
         tWuB3q3hLjzi3AGsc6HvgtwEYvAOyEDcS9e8jhwVvC8oz0iYWO/t2p79gcszlUyI8NFQ
         9MYKbWK1k4Qtpitac78pKBiXMfHf36vQOw+yKOkcWYsWy3n3aZBaFWzRrRwKs4XmG1Kv
         GdKa4mCt8iP8b4ymSZP1BvxfSTallg2XpnudisZ5+B8kv3BBDZJGoQndrMwwBR/60hOk
         FSZQ==
X-Forwarded-Encrypted: i=1; AKwUvBzpqAiDqeAvfPoCz1cyuqi4lPadSt7Jvme+TLdW94xskjk0GI8xKm+kjwDatp5381PUqcuoDHQj6GI=@lists.infradead.org
X-Gm-Message-State: AFq9FYKq8HgSFEtsdAZgID9PBLrszb8qt00eyJnTY5d9HJKZ33+s3HPM
	1WsGlMFfv2Zqfl5527U9tndyhkKH/6EGH5TVflhR6SxT7Vck+g+2WO+Dx/x34pa5hmKnYk3DnnC
	8bCi3nUy8nDHL8RnPhC4fr8iReKefsxAT1e0HKq07JMbla0Btxav94xxxCBwR5P+63FOO
X-Gm-Gg: AYBFou0A2YQnSxKSI91FoRfXuO7dMLXXgoO4h6cTj5NVNr9m+5pgScHZUjN8h1gD43y
	E8LedIrsIotYAHxV3K3dwMT7SUnU1b4DpZuQ/tx93Zr1XJswZxSXtupLohsuYuUciMzqf2v/15e
	Zvgx/FBkSObXpltk9G3Bh2rAkflIkTIsiJwlmaKwHbUeBlwUdLJhBujkNhGllr2KHacLlf2j5Qz
	dpl4iSqRMdQG217apRPyAHlEI3RNww1uzupy9y4k9WDd+hokUc6BCFqwbTOQ7SiGJI/D428r0AF
	bkyxQqJ7jMqhE43p51QZkLD0kXnjfLDiPkJNcdGVsnS655JrYDxTLOEgYCkbFYIGSTwJM35TD0v
	/JWZJn2iFdgo0JWhF
X-Received: by 2002:a05:620a:4542:b0:93b:d7a3:45cc with SMTP id af79cd13be357-940ef96b7eemr1294807985a.53.1793099467339;
        Tue, 27 Oct 2026 04:11:07 -0700 (PDT)
X-Received: by 2002:a05:620a:4542:b0:93b:d7a3:45cc with SMTP id af79cd13be357-940ef96b7eemr1294802485a.53.1793099466727;
        Tue, 27 Oct 2026 04:11:06 -0700 (PDT)
Received: from oss.qualcomm.com ([188.27.161.187])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ebcb851sm19109379f8f.26.2026.10.27.04.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 04:11:05 -0700 (PDT)
Date: Tue, 27 Oct 2026 13:11:03 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: Vladimir Zapolskiy <vz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Bryan O'Donoghue <bod@kernel.org>,
        Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v2 5/7] arm64: dts: qcom: sm8450: Add CSI2 PHY device
 tree nodes
Message-ID: <mwaqzdht3xlouezqwgr4wqmknxn53vjqt52tozdbrxbdjhasbu@yegyvn3f4nyk>
References: <20261026224957.1115370-1-vz@kernel.org>
 <20261026224957.1115370-6-vz@kernel.org>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20261026224957.1115370-6-vz@kernel.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfXw6XemNcZcOhV
 cvI4mNnshvCeWDBpMijBt4PGzcSduIZfGROvMfVvcEMCXvMdVx781b3Rv/eI4/vC0VDhas6Ds2G
 47gOP445t8BzWcYVxxDsx50bx3yaESHykan58vkqCHzsBbw7BxPXTyhT5d8czp1vzpBQQ8MRGKH
 TYnHrYQlUYd7KRU6gERJtf3fVHdZrInsYn1h5MZXDpXuqYW2oc2WNhPWUPq8P/uGZf6SXMKfZgu
 wy9QeMx5Ef6WeLpss96D5LiPRFtNZw9Y2Ntt6UnDObcN3iJYEhd9HaP5rb2ZuQxB1XzJOBctc8D
 yDCPDP333vF5lOqURgavY9n5VVYQdO1cTfmd2CabIpoGuiV9sPNkvkbx4uegp5cdsXC+b5mQPVw
 /DdHu4Rp4ORuusUUNoWl9ARzFHAMx3XqsPMnZP9y7OBkw8QagiIRq8pXX9E5nu/YlyoBb3XLU60
 /4sMqcKVEF5BAgPhuyw==
X-Proofpoint-GUID: 4msaz5M2Z4-r7670vjuhhT317X0lliKn
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDA0NCBTYWx0ZWRfX501Gzc7vcUjy
 H2Tmq/W4dV2NEDUJYntbBoOR4E+2LwLjaLkyy8Y9D+uqpgDkhCAbzlcB8tcR/3Q992uusBMIAO0
 LwpV4/gbDylvgQqllyEyF9T5VjH4rT0=
X-Authority-Analysis: v=2.4 cv=PsYG/AM3 c=1 sm=1 tr=0 ts=6ae086cc cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=Qvngrl3H0rQgGg+94q4QgA==:17
 a=kj9zAlcOel0A:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=UwdZcGpLVFY4tAqoLasA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: 4msaz5M2Z4-r7670vjuhhT317X0lliKn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-27_02,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 adultscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270044
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_041109_288397_5EE5685E 
X-CRM114-Status: UNSURE (   9.52  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 26-10-27 00:49:55, Vladimir Zapolskiy wrote:
> Add device tree nodes of six CAMSS CSIPHYs found on Qualcomm SM8450 SoC,
> and a shared CSIPHY OPP table for them.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Vladimir Zapolskiy <vz@kernel.org>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
