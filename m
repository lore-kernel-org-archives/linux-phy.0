Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54373C982F8
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 11:47:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3ExVsoJwZlkrCIvsgwFmrOMM+kK8SFISHxHi9+gFPw=; b=pFrMYOq/cECSGA
	jEHzFdjblL7k8waNjHoWKJX+buCcSdZ9XSNWz1Oq+pXnTfRVaO9jmvAhuWRVcyfI2sw4bylwgL2w9
	rojHyoXTD1whb72KNDI3XF0jzF5BBsw6gjljk3SU+hqhgcaflyqdBDW82t4yFyQUNgUmzAUgGACuo
	oRjurkQRKO476niDOwptXSjqc74UTbed1vP50cXZTBlAls6mJIC4RIRlMZRh2Fhtl9sjQbpAyxVN4
	Oxd8xk7ffqTBqVivARoPZC+W7vBMnErZEDLsLFGWvgZRDSBp2if80Jx5+kEIMRUOlpZxmd8wPU708
	E5Qu39QGF+X3XV4lC7gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUu-00000001xpw-04eM;
	Mon, 21 Sep 2026 11:47:48 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8cUr-00000001xo3-2XkC
	for linux-phy@bombadil.infradead.org;
	Mon, 21 Sep 2026 11:47:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=S+24Upnppi3EWfz3PXQPHnimvy4U3gni2+ICANG0KKY=; b=kqBPnoAv+BxpHahacnwO3iOvQI
	nQ4nljN5wyfMdozgsWID11ybMg2PFBgxWP8WeFh76xmeayO8VwIGPRrBksyd6R65a3sr2QXCWhgs0
	xj1nPuiyf92OhcPwAfixfIBdvhrDTWby6Ng8vDZqKsFQAi6eSyrTCXDj1e+CTuMEzude/31PUTDXH
	5f9+AUYKM2KUR0a9ctQcX4gh4R0/wEyKJxDeqUQBxu9kAtSgN+BvKZhiR0z4Owo7To3rD9rGxtbci
	EGQqAXRFTC6NJkco04OBSpztJzVpRbRh5TLIUxJ+nHhfKN19d3E9vsMaG35tMaFJdKmD44vvWrLCu
	X65yMIng==;
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8cUl-0000000CEUL-2zdu
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 11:47:44 +0000
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68LB4lh81129676
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	S+24Upnppi3EWfz3PXQPHnimvy4U3gni2+ICANG0KKY=; b=dxUvcbL9JI0ML1W/
	OyqKTg7mokenEkaXm7g9AjJofaBJ0aRQJObP+2lF9FTWAsG1uDyiL5SqBz1YkaI2
	iASSwtdHOn4/WqYErCwHyNBef8GWnqhDISlWG22KcQHA0Ov9ZI0hm+wIiTxnvJPx
	MqicSuN6FI8zMXgYC77sDsdMrGjSOiQeBSjKW2QGHZYG2wGanXf8DkEwMDMD2A6t
	K8VwxwFyIioEA0+4+2No5EdPSUj/79/QEllRL6YTyL0a0bioQ5jUH0M5KVJTTaIS
	z8Q/nqWnalBgUOXk8cEVxmlzCM83CZjSxOTwixzWoVrPY6hPQ6w/EXO4XUhw0F/o
	Bj2Mkg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gu3csg59k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 11:47:37 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-9308eafb465so447270685a.2
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 04:47:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789991257; x=1790596057; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=S+24Upnppi3EWfz3PXQPHnimvy4U3gni2+ICANG0KKY=;
        b=kjcX31dk5bgXP0HthEvWDkzcg64/88Uoo0ijGrmHi0n6z9ELRBYZ+nyJuVsZvp9DgF
         UM5XkHZJWF5XWvxy6UMiW37TyNTb+zEDu7C3n1BHam3tmj1xFpm5jSwQDtOZE7jFUvj/
         beZ99HuETs1KpJBFoS0vv59zLIbK+Z443ziG3AAOZTfVL8zJ0eIkFPbnx/xenF6ocs89
         XEhSJdnrPro+9KR60N/5v+ZdLBHPxkv7Y1ATxQcJ0ib2tb1Mv4vtxyPq1zEtQY9CHSvV
         WU3KEHdqPKsNXyLhePWipiJE38pI+zsuEJZlnx+ObnihSfBdfv7rhB4FLjFL5LPSNPH/
         +LNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789991257; x=1790596057;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=S+24Upnppi3EWfz3PXQPHnimvy4U3gni2+ICANG0KKY=;
        b=SNo9gCGuQnU/+y9zEM0n7bjE8acHlk0cCPV3M1OK1UluPENNLHRlYkPmUkyWa98GQz
         6Cn0rwh3eK1e4/kxPbCW9Nm0MS6l8pz/yKvwWZoYUpEuibL1wYdbfCJCSrnZlYflR3Wi
         fz79PmeVIU9IdvBynIPZS63W0P2ovcpg9YhQkR2ZNgwDFTnMUnYQzQXBjYhSCcVuwagB
         gzz4VH1CwwjobzmMMJmVguuMsmAoyOTQr/RGcmZojuqBYnK4xB+DZVVY2KRXa9NiqNPv
         6OQJRLzvYDaaOOoJGRtYGUVY1oMyyDGASPPI2e+ui/3BSC86N/ah0eVmCHVPfYw/a0lU
         3uSQ==
X-Forwarded-Encrypted: i=1; AKwUvBzukVAyH4tdWiXQ3c+9Lqan/c5ndCdpc8OHt6v/LdYw5mllX6eNlJX+W278gspwXDm4sjBZBGuCBtk=@lists.infradead.org
X-Gm-Message-State: AFuF++kLBWXMGhoAKE/LGXhHsg2vcfIjwokPkkv9PP62bJri7LQLbsAR
	wftWnbpjRSNiYlzWscl1HqjrvjjBScu+S0eXxhHG+hMZZ0CK2m6N35hCclOQOREa0rVmDq84fsa
	Oq9WxrqDJDe+rfFi5aMjNzW2zMjpUNf64NXTo5xztCq68UIDmHk/SXPd7pT2sdiDRr5Pc
X-Gm-Gg: AYBFou2M2KyByRrpusAi4JIy2hNt1F1j5r3IkpH3yP8bIfOpsynXxvjaGGyGEowDK6q
	oBdLoMd7Uc/OYHKQqwVIRRRQwebx0SpuGVHZ37w+A3WrRUBUaK/jQTrj/8G2r9HAtuAyzzGwh/V
	Gm69NR0B/joNxog6Ym7QUEMddRseLawtPyd4Xp43duDYnoHppKVyM1hSYyTxvnASaRXZv9d578V
	zvHq+KAxlV3kU9Im2rBVkT2PQ/mDiF6YrjBhx+vlPZdX961DtNtZLbQ9k15rJkJ37TymoZgY6/Z
	uyI3/A+mxKvobCFsZgBUM1UqeOLnRCAPI1hWhNIIy73vA7cUh2oNmPPZCRBKeeDzrihfnh48EpS
	UfwyELVTU4vKzjy4BbB/PMYAISNE=
X-Received: by 2002:a05:620a:440a:b0:939:5cd3:75ce with SMTP id af79cd13be357-93c15d6bdb4mr19672585a.8.1789991256931;
        Mon, 21 Sep 2026 04:47:36 -0700 (PDT)
X-Received: by 2002:a05:620a:440a:b0:939:5cd3:75ce with SMTP id af79cd13be357-93c15d6bdb4mr19667485a.8.1789991256390;
        Mon, 21 Sep 2026 04:47:36 -0700 (PDT)
Received: from brgl-qcom.local ([2a01:cb1d:dc:7e00:d04:d483:faad:1e4e])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fcd10273fsm227980625e9.7.2026.09.21.04.47.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2026 04:47:34 -0700 (PDT)
From: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 13:47:07 +0200
Subject: [PATCH v3 3/3] phy: qcom: qmp-combo: Add USB3+DP PHY support for
 Nord
MIME-Version: 1.0
Message-Id: <20260921-nord-usb-phy-v3-3-68aa02b12b96@oss.qualcomm.com>
References: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
In-Reply-To: <20260921-nord-usb-phy-v3-0-68aa02b12b96@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abelvesa@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>, brgl@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Shawn Guo <shengchao.guo@oss.qualcomm.com>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=5285;
 i=bartosz.golaszewski@oss.qualcomm.com; h=from:subject:message-id;
 bh=XshSWTHvTP9OXUZSO9at19zLRnoCBRzGftqEz+uvK9M=;
 b=owEBbQKS/ZANAwAKAQWdLsv/NoTDAcsmYgBqsRlNb9giajyrI0VXWmmuCh3xMZ4Li6v/s9d6T
 pKgPzaZpReJAjMEAAEKAB0WIQSR5RMt5bVGHXuiZfwFnS7L/zaEwwUCarEZTQAKCRAFnS7L/zaE
 w8TvEACsjPB3qLP1A+6BiMJ0Kx0ai1ygIBtv46mBcDnVnethDUm7MKDw6DpkjODEvI5Mvjpvhth
 djonGl45WiMoqUTPrhoDEXkQOvPyqNgmn0/KtqeNPu6U+z90QX/oEV+cG3gtkZc2yfMpt8/qgud
 Ew/eNCYR+64b4J0L2qyZ6htpYLaiU161OI3NJT/dd70kV5eVloEpA01izxIf+93eV2ggUvhIm44
 eMG+YspvFbEdrQJTNFM6CuLjyxBgfYaU/qbBb9QMwX0bvk2dKKHVZ9j8Ae4TII61iLRHAfffAQs
 9YHPHnSQC+IumezTyG1+rD41Qd4G2+Bc9z3OV3za391pMcTBD7i2Wr67MJGa35UXXrjkWOkYJzm
 yAcFjzCOHSNPVe0tQeClaXc4OI4nxtOMDAqU0Apzt35v9x+BzAkciidJ2dbRX+vhFrNeWSbvMnw
 ykQc751/apO0VED3sz5nuOIoTdGYCGX0JBMxXKvLOWobKTPA8ROYXuRZwp0q+9IG9BHYwvxrB5E
 9TiRw6lXmocSxhoXQqdfuXZFYRhzfaqmxgS2YpzG0jsmx2KGWAClavMvzeHQpFgd7yqALYAPV6K
 FaZKyXenQjwpUytOdMdRtry6QK1oX94jpBPalis/7X2Kk8jgiph+7CEa+OW4qzrq3HIVQw2aocm
 QDAaMe2ylGvHtkw==
X-Developer-Key: i=bartosz.golaszewski@oss.qualcomm.com; a=openpgp;
 fpr=169DEB6C0BC3C46013D2C79F11A72EA01471D772
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfX4M3NUKcqqMcC
 xAWt8Dy2RM52PmukcUZ0VmZWbZvDnO3BtMw5wtr4v+PsaCX7f9SXCp2fwICWdvXEm5TfTi578sc
 scfHNJMVvqAXemYLBZeQhf9ms4S61vY=
X-Proofpoint-GUID: _A8fw5TKOCLwbRYSY00VE7TQOhTwDMp6
X-Authority-Analysis: v=2.4 cv=QovLTlyd c=1 sm=1 tr=0 ts=6ab11959 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=yOCtJkima9RkubShWh1s:22 a=EUspDBNiAAAA:8
 a=mRaulJff6YCFnxtsk_cA:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDE3MCBTYWx0ZWRfXyQwX70ao3Tsp
 313hL/bqvwQ0cqeP4CR2vZtH/5a2kI6aO2cG3kjT3j8Fd4r6B22rElnzdZlR/MaWxK+Oz9bc89T
 owmvOTYuA6we7sUI96RZs9drhxkB2BDFgA5YWZgxlO6EfYUMG9DlgIxP06YKkNHKCoANjUSgK3N
 W0+ufltrfghMaxvmIdWEeORHYcN7eBFdCX6YLnhvgF2H2pb12ZYNQrYV2AObRjNB6vIPQ32AKMD
 JNnK8prNy85mRYmjutbHrIRt0hHMWYu6CZVg3e0jeEihS750fOBQu6WNIyf6++p/8vsjNPt9aAH
 zh5vUfQ+dYNP3W3Xxa4s1mNNImnUOk/UBzUcHHJrRuZiGYqQbiW9ZY9M7AZA3Jj8SOIiYW1CIo+
 pooMW2tRa940ez+8sOGvHDouEAId101mJgRcz8qjM9z6Ilcvs4kBLxPP1aaJck2YuIsbfyDsgRA
 ONxFcAUUoP1BgIosXIg==
X-Proofpoint-ORIG-GUID: _A8fw5TKOCLwbRYSY00VE7TQOhTwDMp6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_04,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 spamscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2609040000 definitions=main-2609210170
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_124741_828501_87E3FCA6 
X-CRM114-Status: GOOD (  15.77  )
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

Nord SoC provides two USB3+DP combo PHYs. Their initialisation sequences
are identical to sm8550, but the sub-blocks are not laid out the same way:
Nord adds a dedicated USB3_PCS_AON region at offset 0x1e00 and leaves
everything else where sm8550 has it. None of the existing offsets tables
describe that, so add a v6 table which is the v3 layout plus usb3_pcs_aon.

Populating usb3_pcs_aon changes where the driver drives the I/O clamp when
entering and leaving autonomous mode: it now uses the real AON region
rather than falling back to PCS_MISC, which is what platforms with no AON
region do.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Assisted-by: LLM
Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
Signed-off-by: Shawn Guo <shengchao.guo@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 80 +++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index a4f130fc33e3..c4e88b0384cb 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2356,6 +2356,20 @@ static const struct qmp_phy_init_tbl hawi_usb3_pcs_usb_tbl[] = {
 	QMP_PHY_INIT_CFG(QPHY_V10_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
 };
 
+static const struct qmp_phy_init_tbl nord_usb3_tx_tbl[] = {
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_TX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_RX, 0x00),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_TX, 0x1f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RES_CODE_LANE_OFFSET_RX, 0x09),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_1, 0xf5),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_3, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_4, 0x3f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_LANE_MODE_5, 0x5f),
+	QMP_PHY_INIT_CFG(QSERDES_V6_TX_RCV_DETECT_LVL_2, 0x14),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_PI_QEC_CTRL, 0x21, 1),
+	QMP_PHY_INIT_CFG_LANE(QSERDES_V6_TX_PI_QEC_CTRL, 0x05, 2),
+};
+
 /* list of regulators */
 static struct regulator_bulk_data qmp_phy_vreg_l[] = {
 	{ .supply = "vdda-phy", .init_load_uA = 21800, },
@@ -2720,6 +2734,23 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
 	.dp_dp_phy	= 0x2200,
 };
 
+static const struct qmp_combo_offsets qmp_combo_offsets_v6 = {
+	.com		= 0x0000,
+	.txa		= 0x1200,
+	.rxa		= 0x1400,
+	.txb		= 0x1600,
+	.rxb		= 0x1800,
+	.usb3_serdes	= 0x1000,
+	.usb3_pcs_misc	= 0x1a00,
+	.usb3_pcs	= 0x1c00,
+	.usb3_pcs_aon	= 0x1e00,
+	.usb3_pcs_usb	= 0x1f00,
+	.dp_serdes	= 0x2000,
+	.dp_txa		= 0x2200,
+	.dp_txb		= 0x2600,
+	.dp_dp_phy	= 0x2a00,
+};
+
 static const struct qmp_combo_offsets qmp_combo_offsets_v8 = {
 	.com		= 0x0000,
 	.txa		= 0x1400,
@@ -3424,6 +3455,51 @@ static const struct qmp_phy_cfg glymur_usb3dpphy_cfg = {
 	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_refgen),
 };
 
+static const struct qmp_phy_cfg nord_usb3dpphy_cfg = {
+	.offsets		= &qmp_combo_offsets_v6,
+
+	.serdes_tbl		= sm8550_usb3_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8550_usb3_serdes_tbl),
+	.tx_tbl			= nord_usb3_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(nord_usb3_tx_tbl),
+	.rx_tbl			= sm8550_usb3_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8550_usb3_rx_tbl),
+	.pcs_tbl		= sm8550_usb3_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8550_usb3_pcs_tbl),
+	.pcs_usb_tbl		= sm8550_usb3_pcs_usb_tbl,
+	.pcs_usb_tbl_num	= ARRAY_SIZE(sm8550_usb3_pcs_usb_tbl),
+
+	.dp_serdes_tbl		= qmp_v6_dp_serdes_tbl,
+	.dp_serdes_tbl_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl),
+	.dp_tx_tbl		= qmp_v6_dp_tx_tbl,
+	.dp_tx_tbl_num		= ARRAY_SIZE(qmp_v6_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v6_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v6_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v6_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v6_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v6_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v5_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v6_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v5_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2	= &qmp_dp_v5_pre_emphasis_hbr3_hbr2,
+
+	.dp_aux_init		= qmp_v4_dp_aux_init,
+	.configure_dp_tx	= qmp_v4_configure_dp_tx,
+	.configure_dp_clocks	= qmp_v3_configure_dp_clocks,
+	.configure_dp_phy	= qmp_v4_configure_dp_phy,
+
+	.regs			= qmp_v6_usb3phy_regs_layout,
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+};
+
 static int qmp_combo_dp_serdes_init(struct qmp_combo *qmp)
 {
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
@@ -5621,6 +5697,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
 		.compatible = "qcom,hawi-qmp-usb3-dp-phy",
 		.data = &hawi_usb3dpphy_cfg,
 	},
+	{
+		.compatible = "qcom,nord-qmp-usb3-dp-phy",
+		.data = &nord_usb3dpphy_cfg,
+	},
 	{
 		.compatible = "qcom,sar2130p-qmp-usb3-dp-phy",
 		.data = &sar2130p_usb3dpphy_cfg,

-- 
2.47.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
