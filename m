Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93E56606D824
	for <linux-phy@archiver.kernel.org>; Tue,  3 Nov 2026 22:10:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=qrhNl6373PhdnpH5M7DHrZJz2gDpup8GipP/AA6EeKo=; b=fdlnkxkJcVs4kM45Pro1vKtHJt
	Uj/e/fpz9R3nmPtD2taOS+97POFcH7QGe0LoiuhJDScxJfXNcnWXwQvYl3H56AtzNy6unjjEOsex9
	EX2LolEEb5uD4uVY041EjPr/EJl2tPrSL8DmTQHkpYIuOcEan/9AjtMKjowfxyiG0Sq+zkUOqzaRq
	+CGYAdCadNiJrQgHY8SwXSRzMYw4Ey/e6m/y1Zf7roNx03nf+FNWvsod9uJBUTjV9gWyTjDp5sPAd
	gbcjw/ClLOA80PeCwo2IK6x8kjgwhUdBw7Q/qWQlYhjsoocS2nsLR58JYP6i8gbOU7MUcz2C5GC5T
	u3nWZvQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMiA-00000003nop-0pjB;
	Tue, 03 Nov 2026 22:10:34 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOMi7-00000003nnu-1ova
	for linux-phy@lists.infradead.org;
	Tue, 03 Nov 2026 22:10:32 +0000
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A3LL5ZC445907
	for <linux-phy@lists.infradead.org>; Tue, 3 Nov 2026 22:10:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=B8btorfIxCaYOICbiS2yq9ZFGUVTKWbfH0C
	GLMPxdd8=; b=a+E3TXTAtAfPkCzOzNlfiasq7aAxxHyXpI58AYJEdVKtjGrqi4V
	GRvVoAOuvZhfNw8SN3kyDG8v7zYlWN4rOibIzz851iyR/fcaJnjzRFVlVJcVcsAY
	rgHQeNnitb8gtUhGKTQlA2P5TFhqJo7p8A4dEaDoACsnrhc+Gvdbjo+ZBwAbFX+F
	ehXwxc1Q18SB6EvEW7tspcipqThEYe4PxU669F1NrIQwfJRc9g7iCU6zR+WJZiMK
	XsGL79VxonEHwYcx7oUOjTGLdqj5Pk9LGkB/PVBQ9EA0eZnU3jbO5Pd3e8UXyuLf
	HJyZBuxCNNkS9xhSVA2SAvQFAAE4SLABIFw==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hqn8mrnwa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 22:10:30 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-154e9d2d94fso249809c88.0
        for <linux-phy@lists.infradead.org>; Tue, 03 Nov 2026 14:10:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793743829; x=1794348629; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=B8btorfIxCaYOICbiS2yq9ZFGUVTKWbfH0CGLMPxdd8=;
        b=RhJChBAJWrddgldF8Wy4yixssaoC0r8FVTaN2cltj/CE45oDsFPNlBZf7gZCvnpHQ6
         36MQlqk28pltF81xixpapavUio8CyZVUg29JTQwEoIZ9N8gc4I8TYoWgQPvlgMJk3hbT
         NyOT8DOQMlY+x6udcNBzW2aoQ07n0uD0AZIbDPVSzb+GUQN0uxRYX0R4Ngih3vJaJUA9
         E847EinR6vWZ3lFmmexC9YfqQvuOrRTeCdWp2M0okmMmrF7zfwRMeQ27R5s9LNIUjFVp
         P08gdVHDeY5M+7uRifbctBV4rJXfVnm5a/vEOPz9R+NtTJxdx1on5zk9LMWz24Ph/QmS
         7f3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793743829; x=1794348629;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=B8btorfIxCaYOICbiS2yq9ZFGUVTKWbfH0CGLMPxdd8=;
        b=SnhOEno8R9n1gcb+WlK5ljQwKHNHFgXCAd/R2ITiQhNLqJzPDkAG016XvtLx8yNxwK
         l0guqgBuIvtzPGY7vB9euFNYS708CoDC5s33rtMMBCWJqZfFWUSwdLKQWyJi9TUDuPxK
         lNYGtppoWcPJU0/y2DZdxbTdrGNOEMEK50qcmcNSygMcFk8AekX0lVx1DY5fE+xAo6T/
         LP4S6lVajl8WIj1jTS7LP3UsmRb+V97R3L/YqjoPiLVGX3m4/8Uda1Yw2Oanirtd45WL
         VwxuJsJi1GDP+Mj4YaUSkuiQL+4gY32zV9ue/XcGWUDWRibSGoPO1ZtMV5xyl4U0uT72
         Ue0A==
X-Forwarded-Encrypted: i=1; AKwUvBz1+ofGUwvCZQBA4HCFDRL3fIW4BShuyi+QsUZ0X7jXcX2uCgF0dhMizoLat75HShH2tshn+uWzYsc=@lists.infradead.org
X-Gm-Message-State: APuU4Z+5/CMkElhbwMiWJadVSqyYI0JGeeQyVvUdXQm/2dBbfMeB5k5W
	mF/fcxnz6RjwYD8nux81XdlQSLVOb0S4nXRz36WsnjDv0IsfUtFKJYgsy25km3mYPsQ042ZUUZH
	oS0SB9xV0Ru/8fX9A7knm4a5Le5+3IYnn3ODShh281ItOXNHRB77Y8vfh1edsca8nQSO6
X-Gm-Gg: AYBFou12JzlkiVxe7uXRZ+EctAlTxsglcWYxTua4Qbaj3tRZD1eThJOlGPXOHPCfXYs
	WjxssEeR8zptFoNwnIpKdc3I0joTkaBVGJHNPawZwbnuA90USz8GFaIqeiZ1tNPrx2m69QfEXcD
	zh+0FhBz0h6nLfCBFFcnFJ5lxS28v1FP6rSc60HC1d2VYu+Qd/YHvNxKzlJ0Z2mbvuhExBXBqcl
	Aq39AgnlkRYOF1/ptBX7OmDlKRnFTdoUgBenSDH3VYBBwSvYj3/ZQBPyQKGH025exVcJm0Gzs5N
	Ps+0d4DcIwLTR4yDcGv2PQDpFafjW9Q2aEPk1NrhQ1pW5Sq0u+I8g4qg6U/uC8EYVwK1K3DAnP2
	EfVcNqlcRsjrRd0LnWcb6GWP3Gjbb0YoyhQscLBthhUGDVLvU0QlQrUJwGQ3Zn7y2S7zEpSb41C
	mpuOlbfTjQcglSqrbdbHCEmRLozCWj
X-Received: by 2002:a05:7022:7f0f:b0:1a2:2da2:b278 with SMTP id a92af1059eb24-1ac59fbf8dcmr21265715c88.14.1793743829152;
        Tue, 03 Nov 2026 14:10:29 -0800 (PST)
X-Received: by 2002:a05:7022:7f0f:b0:1a2:2da2:b278 with SMTP id a92af1059eb24-1ac59fbf8dcmr21265658c88.14.1793743828301;
        Tue, 03 Nov 2026 14:10:28 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b245c4706bsm2137312c88.15.2026.11.03.14.10.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Nov 2026 14:10:27 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/3] arm64: dts: qcom: Add CSI2 PHY common-phy providers for SA8775P, QCS8300 and SC7280
Date: Tue,  3 Nov 2026 14:10:23 -0800
Message-Id: <20261103221026.3662383-1-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: 8i_ASXKSSvQL-ZZsL1XAhWu0Yg7zB5IJ
X-Proofpoint-ORIG-GUID: 8i_ASXKSSvQL-ZZsL1XAhWu0Yg7zB5IJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX00eAYm/IVCo9
 2XRzyo0ySyxk7tpR7dB/Eoy2xGucCw6qj3kJY5YwPQs1J7SqRrRpg4Y+FW/KLXJHEhh6CyXGrvk
 tlvz/dWggSCK2s8mIJvSWQHOwSUWb2v3Yj+SkukB7k1aV9q0tL4oadfldwGFatHunIbLkoc5Xbj
 wYOxCEB5lSjAY5Q7pxl3Zdg2Q9Vqe2O+ZTIaLixm6PDJTjN+2so5YjsSGbxvVe62UQB4i/jamJj
 FY4ccY877gCCMmFlNNJtz4PzhKn1EB/ksaT9Qk5g+I9D3JUmq1mlCnfkQq0mCQ8NM+Vp+j6oo9r
 fhywVJ8bVcYFDnuKRGvR8kaHi9+4mAPi38iAjPG6QU9js2tw4nN0yg7L3SnitDP1os6v7Q5jjV2
 jMee5lh4mOFkek3KhXwXniDiveWK//mWCeZ/L/fnZDq6w9oKOC/NXa+NdXCLbZjWJSckdNp8Mty
 /k6pCsp6IZLIUC21gig==
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTAzMDA4OCBTYWx0ZWRfX+oWnOm4vQmO4
 fLAZ5vjWLuFiU4BmomEuE8cCDlNbm9E599gfHG4Cm1qao9kFJgaDaylyHTtt8VijCzm6Jc6PJxx
 q68UmlNftAlWkSqUEnxM/kuX6/RdlTs=
X-Authority-Analysis: v=2.4 cv=HbWB3SE8 c=1 sm=1 tr=0 ts=6aea5bd6 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=75llkZfwqvS44bKgfqYA:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-03_05,2026-11-03_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2611030088
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_141031_611261_AF31AB07 
X-CRM114-Status: GOOD (  13.24  )
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series adds devicetree nodes for the generic Qualcomm MIPI CSI2
PHY driver on the three platforms whose compatibles/soc_cfg were added
by the companion "phy: qcom-mipi-csi2: Add D-PHY support for SA8775P,
QCS8300 and SC7280".

Each CSIPHY is exposed as a standalone generic-PHY provider node at
its existing register address, with its own OF graph (port@0
sensor-facing, port@1 CAMSS-facing), so that camss_detect_legacy_phy()
picks the non-legacy path once a board wires a sensor through one of
them. The camss node's own reg-names/clocks/interrupts for the
CSIPHYs are left unchanged, so boards that don't use a provider still
fall back to the legacy in-driver CSIPHY handling. All provider nodes
are added disabled by default; a board or camera overlay enables the
one(s) it actually uses.

The three patches are otherwise independent and split one-per-SoC
since each touches a different dtsi file:

 - Patch 1 adds the four SA8775P CSIPHYs (csiphy0-3) as
   qcom,SA8775P-csi2-phy nodes.

 - Patch 2 adds the three QCS8300 CSIPHYs (csiphy0-2) as
   qcom,QCS8300-csi2-phy nodes.

 - Patch 3 adds the five SC7280 CSIPHYs (csiphy0-4) as
   qcom,SC7280-csi2-phy nodes.

This series depends on the compatible strings and soc_cfg entries
introduced by the driver series referenced above and should be applied
on top of it.

Depends-on: https://lore.kernel.org/all/20261103214105.3605181-1-anusha.nandi@oss.qualcomm.com/

Anusha Arun Nandi (3):
  arm64: dts: qcom: lemans: add CSI2 D-PHY common-phy providers
  arm64: dts: qcom: monaco: add CSI2 PHY common-phy providers
  arm64: dts: qcom: kodiak: add CSI2 D-PHY common-phy providers

 arch/arm64/boot/dts/qcom/kodiak.dtsi | 172 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/lemans.dtsi | 140 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/monaco.dtsi | 114 ++++++++++++++++++
 3 files changed, 426 insertions(+)

Best regards,
-- 
Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
