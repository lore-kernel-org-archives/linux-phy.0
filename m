Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A520606A31C
	for <linux-phy@archiver.kernel.org>; Mon, 16 Nov 2026 13:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3saRRIZf;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=PpuKBiEi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=p47nZ7iM;
	dkim=neutral header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=cq0EAdbm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Yh4v9N1fMCH6itMFiXp6atFZuc7elLzbqRuJEKXzbkQ=; b=3saRRIZf0CmK0F2bs7ukUS/eSc
	K0ifBcX6e5S4hcs1MAXfoyccoluG9wje/eIreRYaKAwY/FRLGQwyPH+KnmF/c1sAOFbrcNvY6NT/I
	gJ1MwFB9xBtWO6a9BxtywnmKg0W37QCCZbYuPWsLkWAf1YqEv/tvklAUJsXyo9gfl6jQ1f+CoFGIA
	/RykQODlcylzjnru61tscv/2pXG+hzmcH7TJsTG42m7CFW4ZcJJKzjdFyzbn2yw340btVKZXrMfZP
	LbRJz5bpmLFFZUSEBBsERtRac+m/ffABIzSdVuVXGaN9pVMTi6a/ydRs0M+Y2OdSJBe0zGf9MbkY8
	DUwuG6Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaG-00000002ZyX-3qeM;
	Mon, 16 Nov 2026 13:17:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwaE-00000002Zxv-28SC
	for linux-phy@bombadil.infradead.org;
	Mon, 16 Nov 2026 13:17:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:From:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=mX/bLIK/LBbOqRGK+WPRiYe1oCKMmUPphTR2ycXJySw=; b=PpuKBiEiATx1+LoqvzyRd1oRwQ
	PRGKZ4LFZ4QbFmetntee688wqo2MkEaqjNvSWhp0p6uhl436TZovEbT6vvtG7WH6I/TR/ISLOUmBP
	S1/EsF6uf+1+NAd/IC6R9b5+GhUfsugeCeXRlIgmAeMUE701+svqmsx9OZVyV6fDJDafRu0TMghEV
	nKxtLdNBRJr0QszLTbs/zJ3WFSCG/opUuFouMn6z6LAioBJCCwRcxlGGKzGwcoL0YJEZKTpV2UQ4a
	1ceB1vg7mFL1sKAH1M+pSk/x7eZjtqukKHOq2q7Ce8arfNZ5WWAqcA26D57K+sVqaCxRdzE8GdmtG
	1161p36A==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSwa8-0000000DqaD-1pmI
	for linux-phy@lists.infradead.org;
	Mon, 16 Nov 2026 13:17:15 +0000
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AGC17iM4069660
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=mX/bLIK/LBbOqRGK+WPRiY
	e1oCKMmUPphTR2ycXJySw=; b=p47nZ7iMx2ZEdr+qIWmsiuMkUMJAltKW/VTGHs
	HQBF3knKftCCwVEhl9HOpSvB7FbaGU+7fUWUlIgoXMaVa1MI7ZZM1cgujk6LltEj
	MEjfe7qp/AdiSshd2HGn7r7BnyYAdCnTonGE7wi6uTs0bSDnBdPv8HZmUcekEW8W
	vOLZjRHUlfLFlDK7WSpWx1PBIk7/oRhzzbEiporDRtsUoUstTZcKO2BDt7z5UANA
	+2pNdUJ7B7uZYiLGDIrCtUeb6VkFhHU+2nFd01ss4/UCp2AJRxtBSf5Za/0XhAPk
	gJh5eSl3H/FAS+veudhy5li784SMAtTRrltzl+DWGYGSejQg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hxhmcehm6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 13:17:07 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-9495af07676so474852985a.2
        for <linux-phy@lists.infradead.org>; Mon, 16 Nov 2026 05:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1794835026; x=1795439826; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=mX/bLIK/LBbOqRGK+WPRiYe1oCKMmUPphTR2ycXJySw=;
        b=cq0EAdbmaiBkUp5RFpNOSctUSZ7Tj79hTccC6rxo8yHI/nGEuJtsvTLMLEpXOeM8NL
         hH7HMdqWU3S/6ewtc/DwvEVoJmfcQ+21fR9Y/u9dOE+xQEyitzqQecVUuE9HWwqPIB8h
         wpmEJeE9FVMwv0VMFwoVi/cOqJ7iPESdIiiUoktQovN+jf4oxtGRjsKerbQx3WOBekfr
         3erSbwa6iM5lnycvI9DIzwY5UGO8rekRL296oe8KVUpc9TTYeJPq1bjvdcwNSEbNmPHV
         iQyP38oyvgO6vOowsWy+n7Fbvdz6HzeLAvWrDq1vxGzZbIpz4XXelsqzxBhu5K8TYS7g
         Du/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794835026; x=1795439826;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=mX/bLIK/LBbOqRGK+WPRiYe1oCKMmUPphTR2ycXJySw=;
        b=m8o08NY+ayre4w6DtDvmfviLN4G2TxX5dZdcDX82PgnUtAZk6olsABK79cyo7eoQHL
         X5H3W9rwk9JrKEytzV36dnPMk/7kl7ZwVY17LXvdtJRqf6DgbicB9hPsbJBHCyFAiNUK
         P4H6fR4Nxf5AfpsqBod+ygapv2hIhJLE8psiwC3IvAahgtoqQURpJb1WYJkkg52dLleg
         lGsvKLFQhqPQqchP5Ht0uO46+eeP1rcaOlTpu0cjY4LSoBWM4MAA5euHonhPBHMA+7+e
         g0kEhvhlkDAg/IRpfe+KdsJuWF/4XYRJQO1Jip7ASqR23vuBRpKuLm0RicyWDnvGfHDu
         9d8A==
X-Forwarded-Encrypted: i=1; AL+hErEQsVu9Kp3iJKjm3JM212eD8veQy8M+mRGou73DcsKh0yIJ7t7ebdxQ67gQGweDhX2+AzcsKFY37Xg=@lists.infradead.org
X-Gm-Message-State: APuU4Z+xA+VVDqQOC76zyowGuRK6cgW984etLoRAcNftU3f/AGc2PCdU
	lBRoMpwJtfuaIeE/7IHmwaVzZecbs/DTTX4b0LgQKGyXPNRnav0uCOjdNu8MDBHiparJb7lSBul
	moSgiw0YxJrDZpId+WLpirge63/tzX0fw7T5QRqdKi1AQLC+LgPbjidTjUidoyqBz7ZoO
X-Gm-Gg: AYBFou0XcApnTlWK7dVTn8NSoD+TiQIaQLmD5igTeehZahcRVyU+pDdrObyfojoc1B2
	mSsvcYjA9Evss13pZrGvxXViR1C57zBrhJCLNDnWW62kqFC1d+bFvi8pZclJ6e02syRj51uLnLG
	1haL0K/Fe2PH/iBnE+8OqR6BMY5HZlyfxa8fufAx+pdYlKgmDEOCGHcZIp7LNjuO3dW/PMvrMb/
	5SV/oK2BtpSiKKBmLs33ATaH+RDfb4+jVD4lByO0M4xdB4a5ZRq5QzQ80pBhq6hWxDBGq0nxtNy
	lUTC2LEl9qnX9hr6lCyOKBrAtFkMrtaLYV+qsNwKOCwv/hv1xju4NlUVP4fYAKajqHPTpxfCV6E
	sq7ep8CzTM3TnaLGxwEvJAMvFpkClXYdKMw0e3SQDUplqsjfLrRz/UVlnuy7cM6IJAcrzC+hJjN
	on
X-Received: by 2002:a05:620a:4111:b0:93f:cbd:8e20 with SMTP id af79cd13be357-9494bbeb2cdmr1633080885a.73.1794835025838;
        Mon, 16 Nov 2026 05:17:05 -0800 (PST)
X-Received: by 2002:a05:620a:4111:b0:93f:cbd:8e20 with SMTP id af79cd13be357-9494bbeb2cdmr1633075685a.73.1794835025311;
        Mon, 16 Nov 2026 05:17:05 -0800 (PST)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-9494c8e1c94sm843927285a.39.2026.11.16.05.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Nov 2026 05:17:04 -0800 (PST)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Subject: [PATCH v3 00/11] Add Qualcomm Nord display and eDP PHY support
Date: Mon, 16 Nov 2026 18:46:39 +0530
Message-Id: <20261116-nord-drv-dt-v3-0-e3d3bf0e2c49@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADcC+2oC/23N0QrCIBQG4FcZXufQs7ZhV71HdOH02IyapZsUY
 ++eLgiC3Rz44T/fP5OA3mIgh2ImHqMN1g0pVLuCqF4OF6RWp0yAQcME53RwXlPtI9Uj1Ux0wE3
 VShQkfTw8GvtatdP5m8PUXVGNmciN3obR+fc6F3nubcuRU0YRasXaShneNUcXQvmc5E25+71Mh
 +SBCD+CMw7/BCRCguyENKLea9gglmX5ABMWLIECAQAA
X-Change-ID: 20260911-nord-drv-dt-d09b21f37ae9
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
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794835013; l=4475;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=S8GDL+ZuL9kSueOOYViGlnQ/WIx0vWEkvXhiQqNpogM=;
 b=OIEFjUoskb9ceeeg7IbVVPU3v49Fg1Xl8hofMyd9H3VeVLejaljeM3S4z5OJpRTBrxXyCsYoq
 3JlFoutkMCCDuhYvNvhP2NjntEunPSY+6sS3zQaNOkWfbp0CtQGUHCa
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX0/OYF+Cjaqn4
 UnefIwVSlfs6kdoRab29eoDBjUsdpivwkZ3K0WntIgKvyl9uqeqcfvkmDxqgQKeJjpQT5WInodL
 5g5evuiTVycy41Q6Akc2MZiJXkHMaa4=
X-Proofpoint-ORIG-GUID: wNp0Nl2Mwa6tEkmAVyx9M5fY0vMjy0KY
X-Proofpoint-GUID: wNp0Nl2Mwa6tEkmAVyx9M5fY0vMjy0KY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTE2MDA1MiBTYWx0ZWRfX8mkR/EkQTVFF
 aUwO7/+mgyl0Ei1g9OV3YHd1B/8PEu4Sr8/ke63dMcGx03hfmf7m0nJYZE1QEmcMphk+vkFZgLr
 eEj+d212Wr1Bn/7+i4IdZBQRt2Ipil6didB9C2zNThbbtPOUEjW2iWAGVbGQ8kADGIS3dmkWqlf
 FxtbiG2U2GShaG/cG11mwV2NhUj7AlSo6K3DbFNj2KMEjMQ/dRlZqjVMNZQKR2q5zpcgq5W3kzE
 44fRBdkO2/Ys2yuMNl2BBv5fBoevw5uFW95iIamoFRe5uF79PFDkfOSpzIHDWu9yjRPLaqsKVbZ
 UXXWjoDFqqX6f+bcm9+1MWhGqrXW54CoN7G4SjQrT82VtP6aQRiZFwYSqKuRQkogUvwelk7zMgG
 /Un1E4Z0vEnBOSQS5nDr4mbgyGkFtaJel7ff2LGegHxAWQ/bEyeM8trGDz07PioYe/d0aiP+SDT
 JAMK9rfBuYkOkZgbkVQ==
X-Authority-Analysis: v=2.4 cv=Vpy2kO2n c=1 sm=1 tr=0 ts=6afb0253 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=bC-a23v3AAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=pGLkceISAAAA:8 a=tVI0ZWmoAAAA:8 a=QyXUC8HyAAAA:8 a=COk6AnOGAAAA:8
 a=JfrnYn6hAAAA:8 a=e5mUnYsNAAAA:8 a=VLagYuF82rudLD4T15cA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=FO4_E8m0qiDe52t0p3_H:22 a=cvBusfyB2V15izCimMoJ:22
 a=-BPWgnxRz2uhmvdm1NTO:22 a=TjNXssC_j7lpFel5tvFf:22 a=1CNFftbPRP8L7MoqJWF3:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-16_04,2026-11-16_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 malwarescore=0
 phishscore=0 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611160052
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261116_131712_809877_F4ACE9E7 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -0.9 (/)
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

Nord is a Qualcomm SoC with a DP-only display subsystem
(MDSS 12.1 / DPU 1499A) and two independent DP controllers
backed by eDP PHY.  The PHY uses a different register layout,
PLL/SSC coefficients and TX signal parameters compared to
all existing SoCs supported by the qcom-edp driver.

This series enables the display pipeline on Nord by adding
DT bindings for the MDSS, DP controller and eDP PHY, DPU
catalog and driver entries for MDSS and DP, and full eDP
PHY support.

Tested on Nord Ride SX board with one DPU. Both MDSS and
DP controllers probe cleanly and panels render correctly.

---
Changes in v3:
- Used the SA8775p desc table instead of adding new for Nord (Krzysztof)
- Add the bindings for Nord DPU (Krzysztof)
- Split the patch "Add support for DPU 12.1 on Nord" (Dmitry)
- Squash the edp patches into 3 patches. (Dmitry)
- Link to v2: https://patch.msgid.link/20261012-nord-drv-dt-v2-0-a2ab9af954d2@oss.qualcomm.com

Changes in v2:
- Reduced the PHY patches from 11 to 7. (Dmitry) 
- Removed redundent comments. (Dmitry)
- Addressed review feedback from v1. 
- Link to v1: https://patch.msgid.link/20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com

Signed-off-by: Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>
Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>

To: Vinod Koul <vkoul@kernel.org>
To: Neil Armstrong <neil.armstrong@linaro.org>
To: Manivannan Sadhasivam <mani@kernel.org>
To: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
To: Conor Dooley <conor+dt@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>
To: Dmitry Baryshkov <lumag@kernel.org>
To: Abhinav Kumar <abhinav.kumar@linux.dev>
To: Jessica Zhang <jesszhan0024@gmail.com>
To: Sean Paul <sean@poorly.run>
To: Marijn Suijten <marijn.suijten@somainline.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: Maxime Ripard <mripard@kernel.org>
To: Thomas Zimmermann <tzimmermann@suse.de>
To: David Airlie <airlied@gmail.com>
To: Simona Vetter <simona@ffwll.ch>
To: Kuogee Hsieh <quic_khsieh@quicinc.com>
To: Shawn Guo <shengchao.guo@oss.qualcomm.com>
To: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org
Cc: linux-phy@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
Cc: freedreno@lists.freedesktop.org

---
Mahadevan P (6):
      dt-bindings: phy: qcom,edp-phy: Add DP PHY compatible for Nord
      dt-bindings: display: msm: dp-controller: Document Nord DisplayPort Controller
      dt-bindings: display/msm: Document Nord MDSS
      drm/msm/dpu: Add support for DPU 12.1 on Nord
      drm/msm: mdss: Add support for MDSS on Nord
      drm/msm/dp: Add support for DP controllers on Nord

Nabige Aala (2):
      dt-bindings: display/msm: qcom,sm8650-dpu: Add Qualcomm Nord Soc
      drm/msm/dpu: Fix DSI tear interrupts broken by adding INTF_9 and INTF_10

Ritesh Kumar (3):
      phy: qcom: edp: Generalize power-on path for per-SoC overrides
      phy: qcom: edp: Add Nord-specific QSERDES COM register header
      phy: qcom: edp: Add Nord eDP/DP PHY support

 .../bindings/display/msm/dp-controller.yaml        |   1 +
 .../bindings/display/msm/qcom,nord-mdss.yaml       | 396 +++++++++++++++
 .../bindings/display/msm/qcom,sm8650-dpu.yaml      |   1 +
 .../devicetree/bindings/phy/qcom,edp-phy.yaml      |   2 +
 .../gpu/drm/msm/disp/dpu1/catalog/dpu_12_1_nord.h  | 544 +++++++++++++++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h     |   1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.c  |  20 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_interrupts.h  |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        |   2 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            |   1 +
 drivers/gpu/drm/msm/dp/dp_display.c                |   2 +
 drivers/gpu/drm/msm/msm_mdss.c                     |   1 +
 drivers/phy/qualcomm/phy-qcom-edp.c                | 317 +++++++++++-
 .../qualcomm/phy-qcom-qmp-qserdes-dp-com-v8-nord.h |  51 ++
 15 files changed, 1329 insertions(+), 13 deletions(-)
---
base-commit: 693de981a44b0e7e3b6a73f0b0bcbae9c8d068e6
change-id: 20260911-nord-drv-dt-d09b21f37ae9

Best regards,
--  
Nabige Aala <nabige.aala@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
