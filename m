Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27050CD4F54
	for <linux-phy@archiver.kernel.org>; Tue, 19 May 2026 05:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S6o47QaK6nwMcTiY8nW+U8tH8bhb+zyCLIAkGslFTlI=; b=JvGddWf/Gshrdg
	D9ZRkx7Je70xgEvgJh2O8qEAhPYO913QIS8eedrTnmL1bDR/1AK6xKoxXIDebfS4sOaJPd6PkC1Op
	w/SREXskY+6vjoRobhK6agDo8XL/lQQLQu2LR1S6uQgfOsQqS9HyL5OBilOFJEJZN89/ONvowSc9B
	2kskcURsvFiykogHzJ2nyeOv5sfwOZO2PBBlQSCNbZQ0GHl5eqDFGS07k2GyUBOROjAttxc0GNcHQ
	BAjS4hu1zSu/k/zbuGOu7aLNVtur+EFX4AC4mKoxEMurFJKY1+9mh4i7u4KC/eew8+08gexguf0aZ
	sAVSxuGO24Rl3AQFKAkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIl-00000000ESU-3b00;
	Tue, 19 May 2026 05:47:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDIg-00000000EOR-2Pw1
	for linux-phy@lists.infradead.org;
	Tue, 19 May 2026 05:47:31 +0000
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 64J4WgEq1252181
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	45o0IW2ZWWFrwHOSmMY+tw+i50QrMnrRfwUfFW1n9HE=; b=d5/CphwL2QJdQUjg
	eTdNECiW1Pa1gWPGG0IeK/gM7UBZik3r4kLKzSKFW0wbkZRaQmfolW5QPe/jTy0G
	rAaZQKfkWZ19rhOYB6PL5+ve3ikxHE5UlSLLOdF25pu9NJy74Hd94oPm89r0is7T
	+MEFeiYqxkcGeUwdkERlDB9yUouillInAzBwAlMpjBK6Wr6srapxFfvYxRmhcZnJ
	r7109AIsmCv22mfG4/AcbeigQeeAJCntVc2FLjyXGPnPVH2I4zxlelAOzZKWCYAG
	cSCApMq/LTu1BpXU7r7Q1q/oWcru2/rOw+DAWKyyIeSiyFWD5YQuIp5rUxhobppL
	3KVp7w==
Received: from mail-dy1-f197.google.com (mail-dy1-f197.google.com [74.125.82.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4e82c0kj9k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 19 May 2026 05:47:29 +0000 (GMT)
Received: by mail-dy1-f197.google.com with SMTP id 5a478bee46e88-30230e64087so3728460eec.0
        for <linux-phy@lists.infradead.org>; Mon, 18 May 2026 22:47:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1779169649; x=1779774449; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=45o0IW2ZWWFrwHOSmMY+tw+i50QrMnrRfwUfFW1n9HE=;
        b=fImBYs1n3R0u9k+41PE9Z/4Ou/l3mV99tLNltv1EHgLBuOWGZ+KlS5b+5pd98xbfic
         GTeVGH3XrFmXveQF0W8Rb/M2RbAyl3UFY2Neqon53ncDSgNnEdOlLf9oglQ4vkAkqiTr
         o/T30LvFlvrNBk1oT4LyZp/8tiY2FLsKdz/aBHn7NbwhoXDZzkqksTg7QjNo6PvKRHux
         yc6t1y5sk0SRRozZQMKiqSDdLFWE7pvSrC/HIauIQgj51DTqa0hi9L93rXPTkzKhmwVY
         jbaRQu3r4k+UldtU5w5S7dIL7kMeun8C36XFGHKbU2Gx+zEaxbNhcvEM8gqVRSDMEbhv
         pXQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779169649; x=1779774449;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=45o0IW2ZWWFrwHOSmMY+tw+i50QrMnrRfwUfFW1n9HE=;
        b=EkNo4Nbk3+ZT1rAB9U6TTK2idpfa+x/zU59oXubqGBhdg2xMZThKC6otLNbSgf8Odx
         R/u2w9VULbslolG7U6I2J+AwIqu3JAOMMishJmjq63gutrAnWxmiMRX28CSvt0EV5gTm
         2wYMXJgEkU2jsNhPIZ4Imx1n9QkV6vjBeg4uo3I/N5gJdoBpAf9ELTJJqgl86YZ8HNl6
         cdP37LlhJHFOi8AGgme5hAtc2Q4aksgWxbXBJuofTunCE735G+Rcrt32yexzmp4XpvzI
         h+KD1zzMtCqCHZOeFOrKMQlL7c88DXNdavV3Fb3MMLvd0+jNBVtrAlTLzES3kbQ8ACh9
         FwuA==
X-Forwarded-Encrypted: i=1; AFNElJ9g79+ruPKNP2tVlHTLfrsZWUNap3edqNYhHfKka1O9SfzokUJm7I/9ZS/ZprLdzBevEaMJfFD9rwU=@lists.infradead.org
X-Gm-Message-State: AOJu0YyZv59St+FzKX02PaQOtxDp9tXAGkOS8IrQwTfYeGUTwXW2X2Kj
	UYJ51vXfIhfTxDkwdGBhDeV6fOuYTLD+svqO0UBMy+6kD9dimioMRlvWz/VduFARvy1rI7IyjF9
	5U66c5xqcQHyUJBfodFdXzHUeCSCM+qsPJgWfA7H/g/cYZcOQy/l4SskZGypjqBqeYXe4
X-Gm-Gg: Acq92OExt4LXgpzbcqVYlg5jmUaas7kI78hYgFwGRiFjsRPDUAsYj1tQOdiIW5J6Sm0
	see1LMJT9d1LQSeN0Ii7nAcFS1bNVepHRiIKF3r1HtXMx08e90Pf/V3D6UQAFRRul34tfu9UQxu
	I8DobAra9mL0MCO1+ZkNsFQiwA9GeVSpxkcgsCbWkpKPUxkSXUvH787PtDTTM0IXLgu4TBEB2mL
	Mh6dtzl/WB9kmWv+jtIIMd9oMlzsO/kbXiE5gIUPxN1RcosuRY2SvP75GV8AudMwzrCnihfoOyX
	Qo6ySED6Rjr1K90f8LiofSqy3Sz6LhVlI4e6Kfwcp2jWfy7raPEGXE2B9CrwrxBUP3Rj1drQDLZ
	zNVxsSDGLfVuRKEDGPTjVeYRpJqc5gf57/XD6GDs5OHwiMOez5yldNpN9aTbdh2J5CSWy
X-Received: by 2002:a05:693c:20c4:10b0:303:f26f:df30 with SMTP id 5a478bee46e88-303f26ffa15mr1123792eec.23.1779169649006;
        Mon, 18 May 2026 22:47:29 -0700 (PDT)
X-Received: by 2002:a05:693c:20c4:10b0:303:f26f:df30 with SMTP id 5a478bee46e88-303f26ffa15mr1123767eec.23.1779169647779;
        Mon, 18 May 2026 22:47:27 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-302944ffdf0sm16288683eec.8.2026.05.18.22.47.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2026 22:47:27 -0700 (PDT)
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
Date: Mon, 18 May 2026 22:47:18 -0700
Subject: [PATCH RFC v4 7/9] phy: qcom: qmp-pcie: Add link-mode multi-PHY
 probe infrastructure
MIME-Version: 1.0
Message-Id: <20260518-link_mode_0519-v4-7-269cd73cc5d1@oss.qualcomm.com>
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
In-Reply-To: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Qiang Yu <qiang.yu@oss.qualcomm.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779169640; l=13426;
 i=qiang.yu@oss.qualcomm.com; s=20250513; h=from:subject:message-id;
 bh=vvLE/XhynCZJFbiPcGP3BjnA7ZMMjJOYuddxQHOZH5Q=;
 b=/KJcR0PA7sjQCRfjoE4U1lYQ/PGkehpHN0m1t/Ui6fzkn5ylKL5VgzojWprlaWAfFw14EzrP3
 /CkPizDX4A7ARt75s9oJUdgoQ7/8f3PAWX2jrGQ/nx09MqwU09SRPkZ
X-Developer-Key: i=qiang.yu@oss.qualcomm.com; a=ed25519;
 pk=Rr94t+fykoieF1ngg/bXxEfr5KoQxeXPtYxM8fBQTAI=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNTE5MDA1MyBTYWx0ZWRfXwaiYSTuI3rfP
 QlMLMbeC9OoqZx7qpyspKz0ySl7wlbvehYDwnpNiEc6FOI2mUTcyYsU+Ja46e/A10iVyJ6X/fF2
 xBRILtKsoWi0GeBp1MuPUo3W/NeGe9Q00UexCfeUbBZo5hXpEgB1li0W2grHwU18NizTKx1IuU/
 eIL1ti8X+je82n0Ri1kKG/hsMwKdiUuXqT6Us361RcX2dMFrH4DBTnp+amVj0C5CiBK47fWVcf4
 eTMp39QnsD7XYJSDVbljW1yofrQclR0odG6v7KIN9zAv4UIw9jQ71Qw3qJIYEuZwPoEdIdvJqqh
 V+7/jkwsHvOYkoBBaQQ3A+TUA8pDdvaEleQzy/Aea0bNnSHGTIj8jeu3G7K6EZrW90ebs95Pf2R
 j9Cr0HE37+8MUHGXw3GD3IVdiVgKJerj5Sv9edX4dRfMHctDAr5uO39mGXc/ZbZVUFppIrAm9Bp
 88jKcOasjobWf52zfbg==
X-Authority-Analysis: v=2.4 cv=A5Jc+aWG c=1 sm=1 tr=0 ts=6a0bf971 cx=c_pps
 a=Uww141gWH0fZj/3QKPojxA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=NGcC8JguVDcA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=qYxDVQDxpuus1MYIwLEA:9 a=QEXdDO2ut3YA:10
 a=PxkB5W3o20Ba91AHUih5:22
X-Proofpoint-GUID: 9-cZ-bWgD08aV1pVtjUupOOgWJ8wxxYz
X-Proofpoint-ORIG-GUID: 9-cZ-bWgD08aV1pVtjUupOOgWJ8wxxYz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-05-19_02,2026-05-18_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2605130000 definitions=main-2605190053
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_224730_633370_F24D92AA 
X-CRM114-Status: GOOD (  26.96  )
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

Some QMP PCIe PHY hardware blocks support multiple link topologies (e.g.
x8 or x4+x4) selected via a TCSR register. The existing probe path has
no way to model this: it assumes a single cfg per DT node and instantiates
exactly one PHY.

Introduce a link-mode probe path where match data carries a per-mode cfg
table. At probe time the driver reads the DT-selected mode, looks up the
corresponding cfg array, and instantiates only the sub-PHYs required by
that mode. A #phy-cells = <1> provider is registered so consumers can
address individual sub-PHYs by index.

Three new data structures support this: qmp_pcie_data holds per-provider
state including the phy array, active mode, and regmap for the mode
register; qmp_pcie_link_mode_cfg maps a mode index to its per-PHY cfg
array; qmp_pcie_match_data is the top-level match data for link-mode
platforms.

On the probe side, qmp_pcie_probe() is reworked to instantiate one
qmp_pcie per active sub-PHY and register the appropriate clock and phy
providers. Per-instance DT parsing and phy object creation are factored
into helpers to keep the probe path clean. The active link mode is written
to the TCSR register at power-on to handle re-initialisation after
low-power transitions.

Platforms without a "link-mode" property continue to use the existing
single-cfg path and of_phy_simple_xlate unchanged.

Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 351 +++++++++++++++++++++++++++----
 1 file changed, 311 insertions(+), 40 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
index b100302be12a..d78d57fb64d6 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
@@ -12,6 +12,7 @@
 #include <linux/kernel.h>
 #include <linux/mfd/syscon.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/phy/pcie.h>
@@ -3342,6 +3343,28 @@ struct qmp_pcie {
 	struct clk_fixed_rate aux_clk_fixed;
 };
 
+struct qmp_pcie_data {
+	struct phy **phys;
+	u32 active_link_mode;
+	int num_phys;
+	struct regmap *link_mode_map;
+	u32 link_mode_offset;
+	struct mutex link_mode_lock;
+
+	int num_pipe_outputs;
+	struct clk_fixed_rate *pipe_out_clks;
+};
+
+struct qmp_pcie_link_mode_cfg {
+	const struct qmp_phy_cfg *cfgs[QMP_PHY_SELECTOR_1 + 1];
+	u32 num_phys;
+};
+
+struct qmp_pcie_match_data {
+	const struct qmp_pcie_link_mode_cfg *mode_cfgs;
+	u32 num_modes;
+};
+
 static bool qphy_checkbits(const void __iomem *base, u32 offset, u32 val)
 {
 	u32 reg;
@@ -4897,6 +4920,27 @@ static int qmp_pcie_exit(struct phy *phy)
 	return 0;
 }
 
+static int qmp_pcie_config_link_mode(struct qmp_pcie *qmp)
+{
+	struct qmp_pcie_data *qmp_data = dev_get_drvdata(qmp->dev);
+	int ret;
+
+	if (!qmp_data)
+		return 0;
+
+	mutex_lock(&qmp_data->link_mode_lock);
+
+	ret = regmap_write(qmp_data->link_mode_map, qmp_data->link_mode_offset,
+			   qmp_data->active_link_mode);
+	if (ret)
+		goto out_unlock;
+
+out_unlock:
+	mutex_unlock(&qmp_data->link_mode_lock);
+
+	return ret;
+}
+
 static int qmp_pcie_power_on(struct phy *phy)
 {
 	struct qmp_pcie *qmp = phy_get_drvdata(phy);
@@ -4907,6 +4951,10 @@ static int qmp_pcie_power_on(struct phy *phy)
 	unsigned int mask, val;
 	int ret;
 
+	ret = qmp_pcie_config_link_mode(qmp);
+	if (ret)
+		return ret;
+
 	/*
 	 * Write CSR register for PHY that doesn't support no_csr reset or has not
 	 * been initialized.
@@ -5229,6 +5277,20 @@ static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void
 	return ERR_PTR(-EINVAL);
 }
 
+static struct clk_hw *qmp_pcie_clk_hw_get_link_mode(struct of_phandle_args *clkspec, void *data)
+{
+	struct qmp_pcie_data *qmp_data = data;
+	unsigned int idx = 0;
+
+	if (clkspec->args_count)
+		idx = clkspec->args[0];
+
+	if (idx < (unsigned int)qmp_data->num_pipe_outputs)
+		return &qmp_data->pipe_out_clks[idx].hw;
+
+	return ERR_PTR(-EINVAL);
+}
+
 static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
 {
 	int ret;
@@ -5258,6 +5320,37 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
 	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
 }
 
+static int qmp_pcie_register_clocks_link_mode(struct device *dev,
+					      struct device_node *np,
+					      struct qmp_pcie_data *qmp_data)
+{
+	int num_pipe_outputs;
+	int i;
+	int ret;
+
+	num_pipe_outputs = of_property_count_strings(np, "clock-output-names");
+	if (num_pipe_outputs < 0)
+		num_pipe_outputs = 1;
+
+	qmp_data->num_pipe_outputs = num_pipe_outputs;
+	qmp_data->pipe_out_clks = devm_kcalloc(dev, num_pipe_outputs,
+					       sizeof(*qmp_data->pipe_out_clks), GFP_KERNEL);
+	if (!qmp_data->pipe_out_clks)
+		return -ENOMEM;
+
+	for (i = 0; i < num_pipe_outputs; i++) {
+		ret = __phy_pipe_clk_register(dev, np, i, &qmp_data->pipe_out_clks[i]);
+		if (ret)
+			return ret;
+	}
+
+	ret = of_clk_add_hw_provider(np, qmp_pcie_clk_hw_get_link_mode, qmp_data);
+	if (ret)
+		return ret;
+
+	return devm_add_action_or_reset(dev, phy_clk_release_provider, np);
+}
+
 static int qmp_pcie_parse_dt_legacy(struct qmp_pcie *qmp, struct device_node *np)
 {
 	struct platform_device *pdev = to_platform_device(qmp->dev);
@@ -5437,36 +5530,102 @@ static int qmp_pcie_parse_dt(struct qmp_pcie *qmp)
 	return 0;
 }
 
-static int qmp_pcie_probe(struct platform_device *pdev)
+static int qmp_pcie_read_link_mode(struct device *dev, struct regmap **mode_map,
+				   u32 *mode_offset,
+				   u32 *active_link_mode,
+				   u32 *hw_link_mode)
 {
-	struct dev_pm_domain_list *pd_list;
-	struct device *dev = &pdev->dev;
-	struct phy_provider *phy_provider;
-	struct device_node *np;
-	struct qmp_pcie *qmp;
-	struct phy *phy;
+	struct regmap *map;
+	unsigned int args[2];
+	unsigned int mode;
 	int ret;
 
-	qmp = devm_kzalloc(dev, sizeof(*qmp), GFP_KERNEL);
-	if (!qmp)
+	map = syscon_regmap_lookup_by_phandle_args(dev->of_node, "qcom,link-mode",
+						   ARRAY_SIZE(args), args);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
+
+	ret = regmap_read(map, args[0], &mode);
+	if (ret)
+		return ret;
+
+	*mode_map = map;
+	*mode_offset = args[0];
+	*active_link_mode = args[1];
+	*hw_link_mode = mode;
+
+	return 0;
+}
+
+static int qmp_pcie_validate_link_mode(struct device *dev,
+				       const struct qmp_pcie_link_mode_cfg *mode_cfg,
+				       u32 active_link_mode, u32 hw_link_mode)
+{
+	int i;
+
+	if (active_link_mode == hw_link_mode)
+		return 0;
+
+	for (i = 0; i < mode_cfg->num_phys; i++) {
+		const struct qmp_phy_cfg *cfg = mode_cfg->cfgs[i];
+
+		if (!cfg || !cfg->tbls.serdes_num) {
+			dev_err(dev,
+				"missing phy settings for link-mode %u, logical-phy %d (hw=%u)\n",
+				active_link_mode, i, hw_link_mode);
+			return -EINVAL;
+		}
+	}
+
+	return 0;
+}
+
+static int qmp_pcie_parse_dt_non_primary(struct qmp_pcie *qmp)
+{
+	struct platform_device *pdev = to_platform_device(qmp->dev);
+	struct device *dev = qmp->dev;
+	char *pipe_clk_name;
+	char *pipediv2_clk_name;
+	void __iomem *base;
+
+	base = devm_platform_ioremap_resource(pdev, qmp->id);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	pipe_clk_name = devm_kasprintf(dev, GFP_KERNEL, "pipe_%c", 'a' + qmp->id);
+	pipediv2_clk_name = devm_kasprintf(dev, GFP_KERNEL, "pipediv2_%c", 'a' + qmp->id);
+	if (!pipe_clk_name || !pipediv2_clk_name)
 		return -ENOMEM;
 
-	qmp->dev = dev;
+	return qmp_pcie_parse_dt_common(qmp, base, pipe_clk_name, pipediv2_clk_name);
+}
+
+static int qmp_pcie_probe_phy(struct qmp_pcie *qmp, struct device_node *np,
+			      struct phy **out_phy)
+{
+	struct device *dev = qmp->dev;
+	struct device_node *phy_np;
+	const struct qmp_phy_cfg *cfg = qmp->cfg;
+	int ret;
 
-	qmp->cfg = of_device_get_match_data(dev);
-	if (!qmp->cfg)
+	if (!cfg)
 		return -EINVAL;
 
-	WARN_ON_ONCE(!qmp->cfg->pwrdn_ctrl);
-	WARN_ON_ONCE(!qmp->cfg->phy_status);
+	WARN_ON_ONCE(!cfg->pwrdn_ctrl);
+	WARN_ON_ONCE(!cfg->phy_status);
 
-	ret = devm_pm_domain_attach_list(dev, NULL, &pd_list);
-	if (ret < 0 && ret != -EEXIST) {
-		dev_err(dev, "Failed to attach power domain\n");
-		return ret;
-	}
+	qmp->mode = PHY_MODE_PCIE_RC;
 
-	ret = devm_pm_runtime_enable(dev);
+	if (qmp->id == QMP_PHY_SELECTOR_0) {
+		phy_np = np;
+		if (np != dev->of_node)
+			ret = qmp_pcie_parse_dt_legacy(qmp, np);
+		else
+			ret = qmp_pcie_parse_dt(qmp);
+	} else {
+		phy_np = dev->of_node;
+		ret = qmp_pcie_parse_dt_non_primary(qmp);
+	}
 	if (ret)
 		return ret;
 
@@ -5482,35 +5641,147 @@ static int qmp_pcie_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
-	/* Check for legacy binding with child node. */
-	np = of_get_next_available_child(dev->of_node, NULL);
-	if (np) {
-		ret = qmp_pcie_parse_dt_legacy(qmp, np);
-	} else {
-		np = of_node_get(dev->of_node);
-		ret = qmp_pcie_parse_dt(qmp);
+	*out_phy = devm_phy_create(dev, phy_np, &qmp_pcie_phy_ops);
+	if (IS_ERR(*out_phy)) {
+		ret = PTR_ERR(*out_phy);
+		return ret;
 	}
-	if (ret)
-		goto err_node_put;
 
-	ret = qmp_pcie_register_clocks(qmp, np);
+	phy_set_drvdata(*out_phy, qmp);
+
+	return 0;
+}
+
+static struct phy *qmp_pcie_link_mode_xlate(struct device *dev,
+					    const struct of_phandle_args *args)
+{
+	struct qmp_pcie_data *qmp_data = dev_get_drvdata(dev);
+	unsigned int idx;
+
+	if (!qmp_data)
+		return ERR_PTR(-EINVAL);
+
+	if (args->args_count < 1)
+		return ERR_PTR(-EINVAL);
+
+	idx = args->args[0];
+
+	if (idx < (unsigned int)qmp_data->num_phys)
+		return qmp_data->phys[idx] ?: ERR_PTR(-EINVAL);
+
+	return ERR_PTR(-EINVAL);
+}
+
+static int qmp_pcie_probe(struct platform_device *pdev)
+{
+	struct dev_pm_domain_list *pd_list;
+	struct device *dev = &pdev->dev;
+	struct device_node *np = NULL;
+	struct phy_provider *phy_provider;
+	const struct qmp_phy_cfg *cfg = NULL;
+	const struct qmp_pcie_match_data *mode_data;
+	const struct qmp_pcie_link_mode_cfg *mode_cfg;
+	const void *match_data;
+	struct qmp_pcie_data *qmp_data = NULL;
+	struct regmap *link_mode_map = NULL;
+	struct qmp_pcie *qmp;
+	struct phy **phys;
+	u32 link_mode_offset = 0;
+	u32 hw_link_mode = 0;
+	u32 link_mode = 0;
+	bool use_link_mode = false;
+	int i;
+	int num_phys = 1;
+	int ret;
+
+	ret = devm_pm_domain_attach_list(dev, NULL, &pd_list);
+	if (ret < 0 && ret != -EEXIST) {
+		dev_err(dev, "Failed to attach power domain\n");
+		return ret;
+	}
+
+	ret = devm_pm_runtime_enable(dev);
 	if (ret)
-		goto err_node_put;
+		return ret;
 
-	qmp->mode = PHY_MODE_PCIE_RC;
+	match_data = of_device_get_match_data(dev);
+	if (!match_data)
+		return -EINVAL;
+
+	ret = qmp_pcie_read_link_mode(dev, &link_mode_map, &link_mode_offset,
+				      &link_mode, &hw_link_mode);
+	if (ret == -ENOENT)
+		cfg = match_data;
+	else if (ret)
+		return dev_err_probe(dev, ret, "failed to read qcom,link-mode\n");
+
+	if (!ret) {
+		use_link_mode = true;
+		mode_data = match_data;
+		if (link_mode >= mode_data->num_modes) {
+			dev_err(dev, "invalid qcom,link-mode: %u\n", link_mode);
+			return -EINVAL;
+		}
 
-	phy = devm_phy_create(dev, np, &qmp_pcie_phy_ops);
-	if (IS_ERR(phy)) {
-		ret = PTR_ERR(phy);
-		dev_err(dev, "failed to create PHY: %d\n", ret);
-		goto err_node_put;
+		mode_cfg = &mode_data->mode_cfgs[link_mode];
+		num_phys = mode_cfg->num_phys;
+
+		ret = qmp_pcie_validate_link_mode(dev, mode_cfg, link_mode, hw_link_mode);
+		if (ret)
+			return ret;
 	}
 
-	phy_set_drvdata(phy, qmp);
+	qmp = devm_kcalloc(dev, num_phys, sizeof(*qmp), GFP_KERNEL);
+	if (!qmp)
+		return -ENOMEM;
 
-	of_node_put(np);
+	phys = devm_kcalloc(dev, num_phys, sizeof(*phys), GFP_KERNEL);
+	if (!phys)
+		return -ENOMEM;
+
+	if (use_link_mode) {
+		qmp_data = devm_kzalloc(dev, sizeof(*qmp_data), GFP_KERNEL);
+		if (!qmp_data)
+			return -ENOMEM;
+		qmp_data->phys = phys;
+		qmp_data->active_link_mode = link_mode;
+		qmp_data->link_mode_map = link_mode_map;
+		qmp_data->link_mode_offset = link_mode_offset;
+		qmp_data->num_phys = num_phys;
+		mutex_init(&qmp_data->link_mode_lock);
+	}
+
+	np = of_get_next_available_child(dev->of_node, NULL);
+	if (!np)
+		np = of_node_get(dev->of_node);
+
+	for (i = 0; i < num_phys; i++) {
+		const struct qmp_phy_cfg *phy_cfg = use_link_mode ? mode_cfg->cfgs[i] : cfg;
 
-	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+		qmp[i].dev = dev;
+		qmp[i].id = i;
+		qmp[i].cfg = phy_cfg;
+		ret = qmp_pcie_probe_phy(&qmp[i], np, &phys[i]);
+		if (ret)
+			goto err_node_put;
+	}
+
+	if (use_link_mode) {
+		ret = qmp_pcie_register_clocks_link_mode(dev, np, qmp_data);
+		if (ret)
+			goto err_node_put;
+
+		dev_set_drvdata(dev, qmp_data);
+		phy_provider = devm_of_phy_provider_register(dev, qmp_pcie_link_mode_xlate);
+	} else {
+		ret = qmp_pcie_register_clocks(qmp, np);
+		if (ret)
+			goto err_node_put;
+
+		phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	}
+
+	of_node_put(np);
 
 	return PTR_ERR_OR_ZERO(phy_provider);
 

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
