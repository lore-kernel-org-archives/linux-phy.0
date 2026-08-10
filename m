Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30F86C5B56D
	for <linux-phy@archiver.kernel.org>; Mon, 10 Aug 2026 15:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5D/8ghKOyUyNGqJIBDIChlHEmlP7p6fGAfiXa5dChq0=; b=BNjSkHHpniZ0bZ
	aKG0LLKoXDey9Gi1qHsZVwQy7uDtPpc2lL/J8lU28g15xR0p7wfLNLeD9/EltegyBd86YDbl/bDcR
	IwNq1GVc1PLFzm0Dve4UyV4EWzsdw7PCuv4DfGndm89jnNL1AngsYFs9N0Cy8b9lBXZ9j64A2yf2u
	v1yAD1unLyBzQCdpB2E2gaOphU5sB1LSUUGQNPbnyrlOTiGuxAv5MlNycJHhRs0x0dyVi+EwPJtw8
	VmJp/1WzLnrvZZrZWX02fJQrp/wKj4kyPdeyL+a0nU5MDt9z9EFJ4sdNdXMVCpVrOz7hqG7TNP2qv
	d27E022jW1+n6Im++QIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS90-0000000CIYg-3FCd;
	Mon, 10 Aug 2026 15:42:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtS8y-0000000CIX7-1kqY
	for linux-phy@bombadil.infradead.org;
	Mon, 10 Aug 2026 15:42:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/Ol8WpcEjj06q3ha1b2ZdRY+l9xpEFrE+uyJaWfhLJI=; b=ey6nV4ri9EsMrYSBnHGiXbIz/L
	0R5vPt07NDRWYPEH8OR/kAOW16SwviyuK3dSqnR4nMi5c2i6lATiSGzkePpRNm7CEdZN2SLvbErtn
	JVavnE72BEjl06hD1Bl2jaWS57miJi44Bqnf1BzkUYjuD8gOy5Va1vcHRXOWeQPNdl/Xh1SUq0egS
	D3kCIBkxrmoVectq44zFRzSJzE7t3tyfcBp2PV7T02B1QFaAJcsFikUOvCjVJ2FT2ku4Z3zPZgN+p
	reESM0TYNi4Ujf+oiphniR3LgZH/1G4eVX2IqtJ2uFRM2656R1UsXcsPkNI6SRkuk/mvuD1lyQGuE
	xMVcgClA==;
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wtS8v-0000000DxLA-2Kyv
	for linux-phy@lists.infradead.org;
	Mon, 10 Aug 2026 15:42:27 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 67AFWMpg1982804
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/Ol8WpcEjj06q3ha1b2ZdRY+l9xpEFrE+uyJaWfhLJI=; b=AeS01/Ct5gaVVxuL
	BGhfFfceoK4d/rRNfiK6ZSBPbIpCmCzbID+VKl8ITCe0wUSneI9auDdnRDDCCxnL
	qWwlYHDL5E9bwviIOlH0k/YWs17jIxRilWjf7FFiABa5ps70gB3DNSl6kqjyICT0
	42xgyUXtCx19u+YkHhjfC/+SiHf6UQJmCQ2yGgwUuCsrQ2ACF1pxLEna9abtBIMC
	fWV/IyyDRRiI5M0aZgOb0HaYD/J7lIK2aha2Dik8zf3jWDjf27XBW0bmDFH3mMmP
	r4la1VhTPJ53QWl8P6mgI+hRNBfeM02sX5PPWpygAtInFV94rLSqqAgBHRHhryZ/
	UaF/PQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4fy8v6tcau-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 15:42:21 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-51c1d137a68so46201161cf.3
        for <linux-phy@lists.infradead.org>; Mon, 10 Aug 2026 08:42:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1786376541; x=1786981341; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=/Ol8WpcEjj06q3ha1b2ZdRY+l9xpEFrE+uyJaWfhLJI=;
        b=bzjKSHJqNTBkJGYEl6udS4GzgEubxfEOHjf0TGM9yoAx8LnA+FSjCvv7Gp3LlpWTT9
         ki8xWNmZ1KvzH8B3ffPDuln0Mt4MKv5scjowdRaCXkBtswN9upajJWS9Zan4wxCWlGYU
         jMEB9Y+8TUNAHv0OhDYzVAQakRylr5vf8qPDdH5vy/wK8RyYiMBzU8UMTUqGeBwVoY9T
         MoIBlb2YwKCAtfE/thG+hK+tgDGAUaCHvFWxjMINqOVUnOjnjL/90KS6OyzMIvXldCKT
         IK/zE6QVqnpD/tlpCRrO0C4CKiS/roooj+cOFRJSiWcWeE6bPMGIzHLF4t6iJpmxjpEi
         RNJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786376541; x=1786981341;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=/Ol8WpcEjj06q3ha1b2ZdRY+l9xpEFrE+uyJaWfhLJI=;
        b=qyAJV2D4gW0xXDVwiU7r//xw3dS4lx58tvFAuIz6Jf2/tqJ8t3zdf2pK7EHjqPkhh+
         WxuFLiukUaQHggWihW8m8LsCq4SWR050ySZD9hkthv0eGOrhVXQKUFKnbFvLXVJq0JgX
         8SOEiEsnf4mcta6FEVR9Jf+dZkHkaTtKFUx545UgOvEcsKOYCLNSq6WOjM/xuKalOyVb
         a2Llw/YTvdhE7nOQTGFFXJfVDvDB/PuuORCUyb4C8gqZmxF6Qsvbremqbjl1W7Q2Wa65
         KhCk1RYbUPkj67ErTJUX+9MXPiItXBCzCmu8Y/yQiyIjgTCxw2FVY/HDQ6C2Kqie7kno
         46WA==
X-Forwarded-Encrypted: i=1; AHgh+RpRqW/bmtyTUtEEzIvA0l0yDZarRJiiuyDmA1xN7Mf1vqJiF4zfe/Zy5y4IWGDJ1uNNDZlzYSrVC3o=@lists.infradead.org
X-Gm-Message-State: AOJu0YxOOOcuwJ01hsw066eRxcMYdlkkhNmjwmJlwVVJOUCocUHW1gJL
	eEf/SQcvsYxyO5GKSY3du57S1QHeMtVCLpYkNGWkKGR+j+tpL9O+TYSN36dNuuSW0krGCRMrAbk
	g9PwAdm8XFlEcoN0JmCJVn8T84FXrs8X8R6sQmn26W4wydqyUY27jSEhZkLsvyVktOXJC
X-Gm-Gg: AR+sD13Gdd3XCDBhaM3shs44gsOIZPQ8NvFKU//TwK9Mf07AdsEbzOWSA9GDQ33ZSY8
	fVP+XaQw4tS40EPQNDVRfDZKXbVIO/av/SM8qWwqswp1cARJLWhL4r1iscPdXhJGQRQQ82Xe4pE
	VdbMpaECQm47Jq5TQKvzCvmq0BpK2OvgkWuk76G2MC7iv30rs1cMH6QLaUAVdh/mhCrCXMkMRhl
	aEu0iL11UExwbjHIcnXWrNdq1VYfngAfLPnTIyLIV9KB5FCjvAwxsT5RCSiombFafCo+MuJLOp1
	8vfUmrnq58Q7TFTpTDvlcmi2vIafbhzwZZLtxPati0QWkwh39bfUDetfElnI0Bas32fd+WIAUmm
	MRowQm58flGNJol6h0AWwZW4675aHZpeYDZVIta0Wyoru4I85Ed7l85GSj/qT2f0ge+WlifTPhH
	lTeR1Lv9vsR+3NcA==
X-Received: by 2002:a05:622a:1f1a:b0:528:3142:d466 with SMTP id d75a77b69052e-52d20a920d3mr252033271cf.41.1786376540589;
        Mon, 10 Aug 2026 08:42:20 -0700 (PDT)
X-Received: by 2002:a05:622a:1f1a:b0:528:3142:d466 with SMTP id d75a77b69052e-52d20a920d3mr252032531cf.41.1786376540166;
        Mon, 10 Aug 2026 08:42:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5b3056f1bbdsm2071673e87.82.2026.08.10.08.42.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Aug 2026 08:42:18 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Mon, 10 Aug 2026 18:42:08 +0300
Subject: [PATCH 04/10] phy: qcom-usb-hsic: engage HSIC mode from
 phy_calibrate()
MIME-Version: 1.0
Message-Id: <20260810-msm8974-usb-hsic-v1-4-e5f93ea76ffa@oss.qualcomm.com>
References: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
In-Reply-To: <20260810-msm8974-usb-hsic-v1-0-e5f93ea76ffa@oss.qualcomm.com>
To: Bartosz Golaszewski <brgl@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Xu Yang <xu.yang_2@nxp.com>, Peng Fan <peng.fan@nxp.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Peter Chen <peter.chen@kernel.org>,
        Pavankumar Kondeti <quic_pkondeti@quicinc.com>,
        Stephen Boyd <stephen.boyd@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org, Greg Kroah-Hartman <gregkh@suse.de>,
        Peter Chen <peter.chen@nxp.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2853;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=TkrMMSM5qDrBbFDzv/+VaChi5RjS9zkmjtBE4vr35Do=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBqefFQhLz1oU44aOjR1xi5aFB9HrDQMTdOWypAd
 O9oOzFRa32JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCannxUAAKCRCLPIo+Aiko
 1WzIB/wPUZAdSQaPXXJvH1bFmntgi2oxFK1T9jsaAfhtC18IWwtDkzXwfNlhfk3AR0XZmGY5UiP
 jjQmoXwuwt/VtjrilmmUZx+u6hDAXj0Zr9EXcb9Fo3CzLGNTgRNxoXu6V3Z+7f95saFMXWBPRS1
 iFeT+5aDaRKCydJtyiI83UIVsC5DaW4p12w/1A8f3yxDD3KZayrQ57H5az4GkXml707CRQxLm4W
 pJ2Wp+9PXIMGEA9EuoqvAdtxrvhMdgmAz7JqCU2sd/YbFJO0ls1bXVkQOmqcuno1MxGNGc6qfXa
 nyCZ/v/i0ylhMp2Z/RBbFkaPoFNGFX930//CM7CRhxNKITVX
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Info: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfX3D+LlVDaWKUk
 iG7pzPJfuAUW+XtqGZn11VnhO0o1UyBZs+wuuUKG3b+nexmyCrz7cd5XzjcRA0d7x04lbTtbfqu
 v4vId0aovp2me1/k00bnQ/T65v9x8mg=
X-Authority-Analysis: v=2.4 cv=PvijqQM3 c=1 sm=1 tr=0 ts=6a79f15d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Sv0fKeRqtYgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=EUspDBNiAAAA:8
 a=0xrA-bSJ-g1zX4FYa4YA:9 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwODEwMDEzNSBTYWx0ZWRfXzeTn4g7IqID6
 1csgWv09nzFfqjxySkrVAhEdFgYNh0NVsXR5m5NnF0YF2hFg0Munk66IOcx2S7stxCPnV1bC0TI
 QV4MHrITEtiWNPJ67OvXpEAxegRP73QHDLaEk4cyedjXwXu0WZCS8fCjeIv7QWHTHgKE0te8n3A
 zv082He1HHiDn+bfA5eH8q3UjpYjlwP1nJqIPMRv7VhCQzT2mMRHGkeug1fic0NT0F7AlKzerCR
 S2BTyvTZ+HdKKCQOfa4pPnkQqlSOMbOGZUnPPGy+K2wgmLWkF+wsuhymNgaHjtQGFAchU45kjnm
 8x/2pPdJJQsj4tMQh7dFUTgk4rCOTRR2oEn07DGOOYeVpRi3wg+M+nUbYTbFOPbGzP8vKtJZsQV
 ddbDqgCKnW80xIwV9aa0TjUCppy0PJLHD3oN/ORdgJYMe374QThEjSxVdzhlFswXVLI/3Smimly
 TupBsVZgxJu/OdjEK3Q==
X-Proofpoint-GUID: 2K0hQlzVLxy64zObz5N6uBqHDDt9g2pM
X-Proofpoint-ORIG-GUID: 2K0hQlzVLxy64zObz5N6uBqHDDt9g2pM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-08-10_03,2026-08-10_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0 clxscore=1015
 phishscore=0 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2608100135
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_164225_855591_ECB45314 
X-CRM114-Status: GOOD (  18.73  )
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

The PHY power-on sequence ends by engaging HSIC mode. With chipidea,
power-on runs before the host is started, and the HSIC connect of an
already-present device is latched at the moment HSIC mode is engaged:
performed before the host runs (and before an onboard hub is taken out
of reset), the connect is lost and the device is never seen. This is
why the APQ8074 dragonboard USB4604 hub never enumerated on mainline
while the vendor kernel - which performs the whole PHY sequence after
usb_add_hcd() - sees it on every boot.

Keep the calibration setup and the pad mux in power-on, and move the
HSIC mode enable (and the auto-resume disable) into the calibrate op,
which the chipidea host now invokes after the host is up and the
onboard device reset has been released.

Assisted-by: Claude:claude-fable-5
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-usb-hsic.c | 32 +++++++++++++++++++++-----------
 1 file changed, 21 insertions(+), 11 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
index b670ec364a2d..e0637522eb82 100644
--- a/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
+++ b/drivers/phy/qualcomm/phy-qcom-usb-hsic.c
@@ -63,17 +63,6 @@ static int qcom_usb_hsic_phy_power_on(struct phy *phy)
 	}
 
 	ret = pinctrl_select_state(uphy->pctl, pins_default);
-	if (ret)
-		goto err_ulpi;
-
-	 /* Enable HSIC mode in HSIC_CFG register */
-	ret = ulpi_write(ulpi, ULPI_SET(ULPI_HSIC_CFG), 0x01);
-	if (ret)
-		goto err_ulpi;
-
-	/* Disable auto-resume */
-	ret = ulpi_write(ulpi, ULPI_CLR(ULPI_IFC_CTRL),
-			 ULPI_IFC_CTRL_AUTORESUME);
 	if (ret)
 		goto err_ulpi;
 
@@ -85,6 +74,26 @@ static int qcom_usb_hsic_phy_power_on(struct phy *phy)
 	return ret;
 }
 
+static int qcom_usb_hsic_phy_calibrate(struct phy *phy)
+{
+	struct qcom_usb_hsic_phy *uphy = phy_get_drvdata(phy);
+	struct ulpi *ulpi = uphy->ulpi;
+	int ret;
+
+	/*
+	 * Engage HSIC mode only now, with the host running and the
+	 * downstream device out of reset: the connect is latched at this
+	 * point, and a hub that has already booted asserts it right away.
+	 */
+	ret = ulpi_write(ulpi, ULPI_SET(ULPI_HSIC_CFG), 0x01);
+	if (ret)
+		return ret;
+
+	/* Disable auto-resume */
+	return ulpi_write(ulpi, ULPI_CLR(ULPI_IFC_CTRL),
+			  ULPI_IFC_CTRL_AUTORESUME);
+}
+
 static int qcom_usb_hsic_phy_power_off(struct phy *phy)
 {
 	struct qcom_usb_hsic_phy *uphy = phy_get_drvdata(phy);
@@ -97,6 +106,7 @@ static int qcom_usb_hsic_phy_power_off(struct phy *phy)
 
 static const struct phy_ops qcom_usb_hsic_phy_ops = {
 	.power_on = qcom_usb_hsic_phy_power_on,
+	.calibrate = qcom_usb_hsic_phy_calibrate,
 	.power_off = qcom_usb_hsic_phy_power_off,
 	.owner = THIS_MODULE,
 };

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
