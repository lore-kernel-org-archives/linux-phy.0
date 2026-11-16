Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D630606A32A
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=5FWGDjm0;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QjgWI7YI;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=CuhfRZNN
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9DkHXMOyps5KSc0AiGinIVf+aIu52lHDXi1W5QFhw04=; b=5FWGDjm0vhDOmz4hdousSQgzpu
	flBEYNRGXLjbn+0dU40imhYcpmmDHLeDYUbwVsMERKQrHDnVPMMUQQ7htnRXHbEbv3SE4z8MXj7zV
	qFZ4Bg70D6sCEmtm5bihpAmP4k0GKr30remCOaa38meTXzo5bCJ9X+u+aFBVo1fxR9dPog38OYPh6
	7M95EVqp4jBvEZ/tLUqza8Fxm3++mnzDWs/Abq4PyHknfEODtkZuVy+/8ODBf7clNbKs56KoAJ1Y6
	8FVTviFH1o2qqsbxP9K2ZwXJew01aQk/9/joclhfDBYKkUmswTy7xX0L0+z/C43ENShAxBH/ijVVK
	6JhCBQNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaS-00000002a1d-1KG6;
	Mon, 16 Nov 2026 13:17:32 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaP-00000002a18-1Jox
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:17:30 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC1oF01005074
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UjqYFlsGYQ1BQRZcmH5d7N4ve510rUSjekhHGgLagxw=; b=QjgWI7YIpdtgeP0n
	w5Tkt6XKngbzdR+lvg+gkpmH2poPymIDAu/Nxg6f259SLON41kBrIbBRLpC6pqtB
	DkGBx0jdXV7lMP76y2/MF/I/K4HfuhQdzfNGgixDcOV6lSQUX/SniloQgerVi9OR
	OIOqXpzuLI0xKHxyovsPT4Xo6SyzCF2GEQZxm0LfV7+iSs7iBdyc5qsaoB8Ufje7
	cNULvOMVcUPquoVRD0zft+01AhTCpM6Q1M2wf1/k7oLwWEP3F+nk2DG2k5kYPWq9
	C4RSiHSZyZLWaAKY4JQU8S+l3h2IxxtTb+ZVIyjPaX5GPHW+bthV/YCJIsk4Gdw+
	myH4YQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j000g0m11-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:27 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-93f20addba1so650592685a.1
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:17:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835047; x=1795439847; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UjqYFlsGYQ1BQRZcmH5d7N4ve510rUSjekhHGgLagxw=;
        b=CuhfRZNNxNGd5RFreKN11dLBmHeVeOTf/2KkUW4uM54cNc7pnmr5KDQ90/CjgSZMtn
         vBkskFXM7W8fEsTlVTt9I++E6Jp9rA9ZZiIq2uSxT+TtKJi2LtpHwoIdWJsHF2gYt6lV
         CVhxZ9fMn3X/k5PB3dxaC2Kq75dQg4L6BkOnxg+WiAtnH1la/62S5zo5MNtAiJQ4tacR
         hoptVHbERTP3eb2ynlxO5TaDyZMDYnuUrCWwbptYWmXo655rc+wqeYvbMVa6URUEFKGb
         UJZPr/9i4KzW+CkbDABv/znyygdCguRqlTTSrYBM++1c6NIUnV00L1OTl2la02oCw395
         OMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835047; x=1795439847;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=UjqYFlsGYQ1BQRZcmH5d7N4ve510rUSjekhHGgLagxw=;
        b=Hr2cVZiG/6YQRHkp+rt83Dd+/9gDM6Z0/bOfuywsArgVHzNo1hLUnJnaWsQNJDRXC1
         d00LoHKB73qBUeEnjiNpo8DYTVgTQ0ja/kMIpTvvzKJ6mB47VytYlxAkN6NzSszIsl3D
         CdrjrwWecwLQn9ggOOMBW+f2gkursXPxsSCpofNuq7nuwulC/G8vjdAvmCPq8+MlWo53
         8r/Ps0DUrptk2c0/6ikwA2n3HTjvpbqBeiGltWfPVe9GYBegBdGe3+js/pEtGfjxAWC2
         5zHxZ76hhQBUSqYOHxcGah5xe84onjfirzrRL11KIZWwN1Ga/1oynjSAlwTP7vJrbdE3
         DGLQ==
X-Forwarded-Encrypted: i=1; AL+hErHv8l1jEDv1Qree2ZTZQxjvw6u3mjrxkHcT1YZPNJ8R/rqujuOxLw2xhogGAEAVCD3fbtLAa4NLb+0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8jUu1NgvovhE4MwbAGUFKCUnDg7fkPJchoh1HtR3B92zLlp4Ok
	sU0qYFo2eceyF7Rnj+qDgyiU9cBrPv6M38HhClkY6h7kJfQcb+BW/ME/hA+1DxDEn9ibuE8fxH9
	EL3ujO2dDlBJpN7j67JO0VIGAeQ8LisqhgSGuyFrLeY9D3j6Tq3cHzr+devXeQd6ymyce
X-Gm-Gg: AYBFou18/Mt+oGaAXEFjRPL1io7ib/SLJmCpt4CoKTb0BK2EDSAGQGbexcGkIqPvpRj
	H7WKuKDRdu4Bodhh+/x93TzsYH5axo+NtLnoljm/a0Bwm0+J6qj5qe0asGe8YLU+SVZsJuywivX
	lfcahWUXjsIOIQkSG+MnqnD07Qn8Pb/+VpqLyZ3y6OvX1PkRi4JtFBKlC9V86bC/W/q3lHF1wnH
	MhTPtrL0KSFnuNXLWxNUw0AG07dMY7lDMaS01XifbmEevv4JPh2Ij9tQqZ6CakM2rZ3ga3Fo8rQ
	rJqmQWkBDvW1kVnUi7/quwwk6PKJQdLnSc94vAV0d6vIj4jZdhc2wfKHzcT515/JXaP8QOZ/HVz
	aPoN91FmejY4lsEd12vmWqgtUcRfbYR3L9FxeKFDkv1n96RCYJ6tRBybVim3Zh+giIUDelQiC2X
	Pr
X-Received: by 2002:a05:620a:3915:b0:949:7572:e76f with SMTP id af79cd13be357-9497572eb07mr622417585a.46.1794835046981;
        Mon, 16 Nov 2026 05:17:26 -0800 (PST)
X-Received: by 2002:a05:620a:3915:b0:949:7572:e76f with SMTP id af79cd13be357-9497572eb07mr622412185a.46.1794835046441;
        Mon, 16 Nov 2026 05:17:26 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:17:26 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Mon, 16 Nov 2026 18:46:41 +0530
Subject: [PATCH v3 02/11] dt-bindings: display: msm: dp-controller:
 Document Nord DisplayPort Controller
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261116-nord-drv-dt-v3-2-e3d3bf0e2c49@oss.qualcomm.com>
References: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
In-Reply-To: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
Cc: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=910;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=nRlWeo6qwZpE3h30qNK372PqbYIGf1MFndG0VIRsKqc=;
 b=i6ITwZfY21YuZyrTMvYWrpTI+9AHfbQ5K3aBNJlABaLA9eT/NNIL0fXWuALzmd8XnCtpQd0ZR
 F2hraEx6/IlBVnXX/+Dn0+ng9V4wOg1HwNGpnrt86PAM/eN7YQy/6/E
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfXy5HLXW9JvMy8
 8Vx3H9vRijXlPkTdXFmOrA42x+WYfzVw+lvP2pOYJx4lN3rEvu09L1UPUFQlx3cGTpeeewKClYu
 Y/FsolQPvhDNag8ixs15Y3RhpAz4QT7exdbC1+tWnXaJIuDYBN5e6WDtqwPpPsvZGHffF6Shd8B
 +j3FLrkfeDKLBY90vFPa5YR+iJY6CC6l4qjuFkAvu/VqvV5M3w9g+kmDpmuo5HqZJ6VpezpTrfr
 UZGazIK04c4LXPbNNwbusiS58A90c2KrcyvGhc1C8+3RgTMgfVfopwxZmqxzuZoqzaaV6rVd9Zm
 cPK52f1M+T5nIktWJ+iY8gA+aPAAUb3KQNr+JF+ZoA7xxRZ8qgDOTcdETGQKVWGLuUFFdtuLi8v
 FGlnWzzFt18AkChYPix94Vm6Eyjpyt9R1+hogIV9SpPNNATORihTlUhseqYrhQGFihxGviBs5S3
 1QKztQ1iCANrMwOBAZg==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfXwdzbSVQd3MWK
 0bNbVyZeJv5PgT/cdfCPlaGvqzvQgXKhnw0GNYH57CD0XPPUjNamzc7F/p90PF0sVEjHkwv00xl
 kKgAn+njlJiN6V56mN5mM8trdS7KeGY=
X-Proofpoint-GUID: jMOZoGfmr0PK2lISqkt7vetdvoraQYhE
X-Proofpoint-ORIG-GUID: jMOZoGfmr0PK2lISqkt7vetdvoraQYhE
X-Authority-Analysis: v=2.4 cv=Vdtir1p9 c=1 sm=1 tr=0 ts=6afb0267 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=lCWEfuFUYIIHy-HYLagA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 lowpriorityscore=0 adultscore=0
 phishscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_051729_369007_240FF01A 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Nord's DP controller is compatible with SA8775P in terms of register
layout and clocks. Add qcom,nord-dp to the sa8775p-dp fallback group.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 094a6383bb77..9be0288261e7 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -35,6 +35,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs8300-dp
+              - qcom,nord-dp
           - const: qcom,sa8775p-dp
 
       - items:

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
