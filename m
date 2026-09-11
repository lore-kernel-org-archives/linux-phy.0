Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D5EFC88E58
	for <linux-phy@archiver.kernel.org>; Fri, 11 Sep 2026 15:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pv2P3rvxbjOy5r5BoTSsKinYqwAp01MHihq5kOLLG+o=; b=Pw2NXyH6ESA6tN
	hbW29qQcgGXZrtAaYmnp9smoo5JD21qZygSFiELFut+M9ZNBcTWci5h2xrSGdriAEo67a15vA/KtQ
	/tO4Ts59C1X0NILZN+xiNBhsHEQsoSI+PFPMDXeQCjJORm7kAn+lAOEl99Voy22PQuaNdfkHhJq9a
	BCncBCD6uRJBDg7G6ElBN892h9Ps8LKIhBjPakUTHkbAElGUaZUQTzDL+gxW7D8dhnbWlLPgy1E15
	JO6/5fiQGGq1oifVCaCJ6H026YhoLpknkvy35JPdsRc0tYDRCFYa4ZkP9J/vSFV0EQar6TE+kn5FS
	gAa5SNoR0TzKNA8obIxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Jd-0000000H4wI-388m;
	Fri, 11 Sep 2026 15:37:25 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Ja-0000000H4vT-24Ol
	for linux-phy@lists.infradead.org;
	Fri, 11 Sep 2026 15:37:24 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68BEm2SG1370691
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w+NzFK+jhrEXQEV8A8yfqvHMoGUTclgm+A97KLRt7cM=; b=ZibVUb4hLzrmkptS
	yEVl8/W0rQMrssXkNynIdHAE4bkAZEQVm839IwZoYIOD07J01SKW8l44GERW7vIt
	ojVC5+6m9Qd9sA5qUzzaHjMEGtDpME8c8iX43+fMwqhJzMaPCXUpXbYoxduAU6ON
	OD16TN1B4t0hXdAwXNO/XtTP3ZdhLi6h3uP1DkPHKW/YrrApOo8gaHniBt2AMiRm
	5yN/X5qWf6zSn79/hk+9TcNGRghr5WjClVzZDm7BWHvVKgnlGjS6LYT1zt+ygnL0
	+K7POVwh4IiEJuNAMHW465IKJbuOFx6WVlzE2rquvJyn+c+iOcqZzb2tjNV8zAz2
	IvO1uw==
Received: from mail-oi1-f199.google.com (mail-oi1-f199.google.com [209.85.167.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gmbf8jhvn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 15:37:21 +0000 (GMT)
Received: by mail-oi1-f199.google.com with SMTP id 5614622812f47-4b37620eb73so1443254b6e.1
        for <linux-phy@lists.infradead.org>; Fri, 11 Sep 2026 08:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789141041; x=1789745841; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=w+NzFK+jhrEXQEV8A8yfqvHMoGUTclgm+A97KLRt7cM=;
        b=dHXYPkgTidw0G3GOlosv20trnnA/IDzW2g26Q7hR786w7ShIsBT6/c1uFkXifHww70
         3swj9Z3CelqrpSAUc5yRKsmX7+6RwE6G9cTR/uxpergmPKvuYgqEtm8TCi7C4B/v41wV
         /9cLGIDw7MGA9HvjY8D5H3XS5+prBhValmGIpkq166r7QOBOMv1ZVHCpuuEkOJEqvOQi
         VXgHAiExVw63mjvtOY/6iF8U70sMDssppacWGG3rHnAS3bLamE7UZ1uA+GumVt+1R4S4
         BKKLq+mqpBEKnq/71zQ9Pz8lQzAEblOoMKqaPtCIEbWh/G3i6XLgwnvT0M3pxVIphTVF
         ZL4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141041; x=1789745841;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=w+NzFK+jhrEXQEV8A8yfqvHMoGUTclgm+A97KLRt7cM=;
        b=U2IQHkahOPZqilzo7sqevTDnP9Md8pF7ZCt38H8gqh8ETZwBzhAL+bIwDmlluR6wZi
         qKbflrDKKM4eOddk13/bk6TwgwbbfmPMxP1rRpQiTXmf95LiEf0VNkOUJd5Pb9+5gNmr
         kcqwIZi20EP4H88hnjxsyHGg7a2g1hXwjbWzKT97CnRBfjh88cYTh3o9WpuSlpFUURy8
         8I+PeCgyv/IJhu7ZxiWkMl+xITVoocYvEHqk4YvY43zVn/caWkXdI5Iq4mvM9jGmfNxr
         rICdsUG/9icjhbT5izBX1ZDMYmdPbY6BJUMrCtcEpxhzqEN9JKsvbqVHU4Sroz80YyBW
         vN1g==
X-Forwarded-Encrypted: i=1; AKwUvBw7mg8FlBnuzxce5jLjS0RSi1HWi5VDgh8B37ZwgxZ+x3QFKMaJFHBfDo6CUEyWpXrPJ9BK+YDmllI=@lists.infradead.org
X-Gm-Message-State: AFuF++m9GAKVnqvBcxiclE6BAdadWRgsx5okK75qtAnOgHJedK5sFjcP
	9NPQx8GaGWDHmNvdBmKFgmbX6dvP7Z6Ub+kgw+z3OmLPqtKTyLtDnYReTKgqo9EwHSXBGZzKT7L
	yThoLXUucP83TLpvUNJTDEuxTsJBqzHGk/uNESSqynC41Q9rFX5ItAZAtkGH26wyETqSv
X-Gm-Gg: AYBFou0GbwdT77tjp23osa5C5L4QndRXlyMn9JbdUsD/Yr7SNgvHU3uOR26N+VKp8Ak
	0kd2BhAFH1pOsDjpCz4QK+HHjXd0t0+/TbPGkd81ZsXScUTOBDKwFZ+Oq7MYIyIeSfViFh6onY4
	bAWofoLL+OvUYAn8vATL2UXF7RYpyn8CdxerOni9nw+JjH+WdLJH6I1FRwkSmSQPYVjL+9jCiuH
	B82A8v87ZXtbQKcnWO3ERetHQo9YWYTaCofsOgkU44AnDMtJHaCcLh7lQ+S/vULsyqz6jE+jb8D
	KLQDBZvSpU5eTHUM+wGhDMysFCK9XPG6q1IWF2dS7oaUcUXfytcXrv7PRpWsAVmFePRNYALX/4A
	lOCTsIvAKE2oPh99m7go5vCaQg3I=
X-Received: by 2002:a05:6820:60b:b0:6b7:318d:85d with SMTP id 006d021491bc7-6c0bcdaf0a0mr5142125eaf.25.1789141041138;
        Fri, 11 Sep 2026 08:37:21 -0700 (PDT)
X-Received: by 2002:a05:6820:60b:b0:6b7:318d:85d with SMTP id 006d021491bc7-6c0bcdaf0a0mr5142085eaf.25.1789141040730;
        Fri, 11 Sep 2026 08:37:20 -0700 (PDT)
Received: from hu-naala-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-47df90ff148sm1882160fac.14.2026.09.11.08.37.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:37:20 -0700 (PDT)
From: Nabige Aala <nabige.aala@oss.qualcomm.com>
Date: Fri, 11 Sep 2026 21:06:33 +0530
Subject: [PATCH 02/17] dt-bindings: display/msm: dp-controller: Document
 Nord DP
MIME-Version: 1.0
Message-Id: <20260911-nord-drv-dt-v1-2-e25c073cf1b6@oss.qualcomm.com>
References: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
In-Reply-To: <20260911-nord-drv-dt-v1-0-e25c073cf1b6@oss.qualcomm.com>
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        Ritesh Kumar <ritesh.kumar@oss.qualcomm.com>,
        Mahadevan P <mahadevan.p@oss.qualcomm.com>,
        Nabige Aala <nabige.aala@oss.qualcomm.com>
X-Mailer: b4 0.16-dev-d5d98
X-Developer-Signature: v=1; a=ed25519-sha256; t=1789141012; l=867;
 i=nabige.aala@oss.qualcomm.com; s=20260520; h=from:subject:message-id;
 bh=gx2h1808ankOTjgTieRYw6/x4F3FIMSxugTAd8F756U=;
 b=dAb+YZjbbu9LpS4+5dUjqKfYUwH+FxUIFOY0Mq9r8rTaAJC2hRMCTEmggfaxBaVErFbObwkrx
 XzNXvVcThRZATbMI6pwrFEiMRG1Dd3bqlRSfRGDX82mo/JcoxGZ7I1a
X-Developer-Key: i=nabige.aala@oss.qualcomm.com; a=ed25519;
 pk=PYHJom8sPos1IGkrbCCsWiE7XTBQrQZd9jzAo051tgw=
X-Proofpoint-GUID: QART1_rhxhnuxujgG05C1X0oJg9NeK9n
X-Proofpoint-ORIG-GUID: QART1_rhxhnuxujgG05C1X0oJg9NeK9n
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXxgAs8kE0lfWs
 hMoCgZZJW1/GftsJt5zOMd0dMPVFg7ejrdDiNyYZeCnwdwzH2OvLFcfO+ykzSGYDG40Z/qWHscE
 RX4KGxntUxlx7ZuR1gwyBEf4fLPB0+tVYe9G1qjEdCHsMu08Zbri+NOAVIkmt0RpFBcGbsjke5z
 DeK8nRatoS8IZCqn3JHlI1xzUhg4iRJHj51RNmF+w+rTUEd4FdTtbSAt8RKDZkOEYXKDYeHWBWZ
 j6pbXc8k1yMATjmpgMEWDslQAg16QfB8PjA2YFQ1SXruMoV5Giqc3EfeQO3TC5lNoy8J3Oi1QYS
 q7C6TBQS/R96Y4Kme0qRtct1ktEHVyRitj8pZEDXh1AWWv/lsJrS9HL6NjFi6oh/frrf46N3NHA
 dPEERUx+sjjM0AQv54cvtw0NxA28uq7SBsZoo7XikEFDu5vOFWkwNLpUtKCGHf8qZUcN3spBt/t
 I2JMOYwhxmKtySS8dZQ==
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTExMDIxOCBTYWx0ZWRfXyKHjr3sVgJcz
 1EtxwC3Z0RCUS/WGsE1fsiAO+GYUm4itLymXNMZRzEdZWLEvquQ6QIAJd20AHZ9r6JSRypV7nFA
 FawjyOPcKGnwZgxjSGXDGBXMeyk9KD8=
X-Authority-Analysis: v=2.4 cv=UJFIjyfy c=1 sm=1 tr=0 ts=6aa42032 cx=c_pps
 a=yymyAM/LQ7lj/HqAiIiKTw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=lCWEfuFUYIIHy-HYLagA:9 a=QEXdDO2ut3YA:10
 a=efpaJB4zofY2dbm2aIRb:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-11_05,2026-09-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0 adultscore=0
 malwarescore=0 suspectscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609110218
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_083723_678757_861D15A4 
X-CRM114-Status: GOOD (  10.78  )
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

From: Mahadevan P <mahadevan.p@oss.qualcomm.com>

Add the compatible for the DisplayPort controller found on the
Qualcomm Nord SoC.

Signed-off-by: Mahadevan P <mahadevan.p@oss.qualcomm.com>
Signed-off-by: Nabige Aala <nabige.aala@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
index 094a6383bb77..8d980acb1a16 100644
--- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
+++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
@@ -19,6 +19,7 @@ properties:
     oneOf:
       - enum:
           - qcom,glymur-dp
+          - qcom,nord-dp
           - qcom,sa8775p-dp
           - qcom,sc7180-dp
           - qcom,sc7280-dp

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
