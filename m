Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B580A606EEA1
	for <linux-phy@archiver.kernel.org>; Thu,  5 Nov 2026 23:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=ZS5+unrJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=WtGBtEuE;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=gBisLTL5
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=3dry09OExjI8X2fejECc8JhNsFM2SKQc5kyfwkudO+g=; b=ZS5+unrJXB1z06v5M98V1SkkKR
	Uf4KCHuyFcbnEzbtOTi9pf4k0Jynm4vbrtNLrYkcPYeI4vzqi+j9gyrXSBIpNXEgNM6RupH8cG/Qg
	wS9YvLIsrYXDtYaAC5r0XdByW2IBUryeFlzHBX1jr/bpsfuLUPNXp3FVEzkRNWQy/U47klZQdBHTI
	xs9Afyx233wygm1hvOvGsJub8rpu46cHwnWZaS82+LgzC7hBwRDwbAG9EBfvhi/w5yuR6IcQ3ia8q
	N40C08DUoT1g/n65lSAtNzfwUDizAOrj8cS3D7Z6I0qFECQ3QMJR+LhcR2VOpQsTwtcGa0aVpCMMr
	1NbxsDbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FD-0000000AtT8-21nE;
	Thu, 05 Nov 2026 23:51:47 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xP7FB-0000000AtRl-22My
	for linux-phy@lists.infradead.org;
	Thu, 05 Nov 2026 23:51:46 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6A5NeOZ61707471
	for <linux-phy@lists.infradead.org>; Thu, 5 Nov 2026 23:51:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=X0kFzvyq0Q1
	jnZcbpuAo3OSL5P0T77jCze1tSTQGuMc=; b=WtGBtEuEzw8Sp8weC1m4TEthcUa
	g6MA3/WjTefSJuukhGCNh+0jw9k9GhWDXdwvUUWdOjVnAhphBqgpO+2BBCJOV2wn
	rdVUNJZ0KPVioVTIXofDAO5j5scZYKSRUujkMwLDrB/8Q4OU5uWZ7RfPdafK5Ck3
	spma7bdqTcafDhU7R+fqxCRh3lPnBOE0vsio/EQNeYTVs70GlWJk/0TdvM6sExP/
	z6JcLvTkHApihqaPaEzzunfpd5W0nrt1A0LiXvW7JHIzweObjOVWPn0BLiMMfIzs
	LdwXI114bcXhogemi88MqIFb2SGp+lg0WpOTNO9l8ao/8Xc/1wJsBevkgfA==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hs3p9g0y1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 23:51:44 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1a5005fd0f8so125865c88.0
        for <linux-phy@lists.infradead.org>; Thu, 05 Nov 2026 15:51:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793922704; x=1794527504; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=X0kFzvyq0Q1jnZcbpuAo3OSL5P0T77jCze1tSTQGuMc=;
        b=gBisLTL5npjSkGTnTEWWBywBqOr1THDtC4pTazcHKa+Q3qdFeeqpvzCL6ipCAeIxL9
         tmoMHmwwtBJXHsHKb+i67gkBhPtfuEPhRhruqCNbMVKSV9xD9mLVoedfhmcWwtopyDJm
         fTauqkRPelklHZ1ZEEkEfaY1McrOQ4RmErBenx601DdPk/SnkLm3pBJ2A4XYjPfs3KKb
         UB+R+qwpI5nTuQePIwuiVHAR301RC14G3iPvov8iKFamkE9Uv6KW+1cdYz59pytg1WAk
         flgBw0yE67vEP8Q7yJ2jGTZkpqLdRlC1+uCXjerbvLaRTCZiuMX86wvyscIb4Ye/Z5Pp
         DBQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793922704; x=1794527504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=X0kFzvyq0Q1jnZcbpuAo3OSL5P0T77jCze1tSTQGuMc=;
        b=dJySwKGIcX3F3ff5OkbgO68zwl2MeD+6B46pMdUvDWVbfI11QoPSDLh46CcPS3rAtQ
         4XATKvpnk6vamKjNv/745vZxxrUe3LKRV7Y/4imPZUKZg+J2cuRru8nSb9XUDZbHk4LA
         s1b2cQJMeJ9tY3HBfbH3PIX2CXd+v36YIBQANoB0wMx3KIQtckFiYVhJlf5w55FH9SZA
         LGAVZH1Q3O3zjyq5O7HwI+s38rGIzpXzsRttpKfyZbUl2Rrf5dndHNKXO9b9yJkbU/5K
         /80i9wTr/NuOU9NUyteB/lPppncGsO+213FZWjJ4taMW2F4dvg7+C83zdFNZS1F+LNR7
         OxSg==
X-Forwarded-Encrypted: i=1; AKwUvBycGQe2i7sTsoEs42k8pcU6IhJARRW/j6yZgnQl2oA1s34oqpvmTAPmRk79WKryELbc/q9z8nLFAxQ=@lists.infradead.org
X-Gm-Message-State: APuU4Z/MIVux3rTAT5H6HEf+lfKp7ISyUQ/5e5HC2EjsIuYWsIEurwM6
	lMfI+JT5ljsBUxFqzpT8HHe/MXPc8lMjY8CJCPKhGvEsnJvC2yy37Vfffh3eOJpb2Rn5WBobr54
	BWQnpgD0i2PcCFYkSq2BQOgdxdhOnZoUtCpTUvH3GYi/fEEGSZSw+Ps+Ei4/cCufF6LvOwIadpz
	Lr
X-Gm-Gg: AYBFou0fSzFAds22vimSDcW1RDg6ydau3MZLEJBYQZ9zWWhb3cpSEbFU0fTcZ9btiQi
	IbcEAVu0rEfTRS4sXylPYKKtdZAYnI91weoZ+xbnB9eXRdNH9zNQNCkU+FkK19zvdTdC5F/1+Es
	6oO5CK5uc2oG7Q+TgHrX8XyP5TUdskbNHvU6wg8/BPl6ygd+BAApsHla7HRoU3wM/YASQ/eSaUC
	sL7yrl3RM3ZwwW19CQ4ogDZmxop4wIla6iB+p07JA0yeixnKhdO+ulGFE2ydEB0hSqPZZuAPmnP
	GgdCdWEBnkuLvZGG1IVaNQmfEk41p6Wrc8hiOIpvlhY63BbdkO9MJME0DecP+GW5bw+lWUvfwpo
	PWKuVtqUkvuEcFzqeLp/WcHU4EnK0YTUj7WVTphzcoO0/Yb4QWF0paelsI6B6oawvSTHU73lPcW
	lo/AlvsFr7xZ1H+dayFR8Mo1826bw=
X-Received: by 2002:a05:701a:ca03:b0:14f:505d:813 with SMTP id a92af1059eb24-1b25d37e2e1mr742548c88.41.1793922704146;
        Thu, 05 Nov 2026 15:51:44 -0800 (PST)
X-Received: by 2002:a05:701a:ca03:b0:14f:505d:813 with SMTP id a92af1059eb24-1b25d37e2e1mr742490c88.41.1793922703457;
        Thu, 05 Nov 2026 15:51:43 -0800 (PST)
Received: from hu-aarunnan-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b25e4a63f6sm389041c88.9.2026.11.05.15.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Nov 2026 15:51:43 -0800 (PST)
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, linux-phy@lists.infradead.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v3 4/4] phy: qcom-mipi-csi2: Add sc7280 D-PHY provider
Date: Thu,  5 Nov 2026 15:51:37 -0800
Message-Id: <20261105235137.2635442-5-anusha.nandi@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
References: <20261105235137.2635442-1-anusha.nandi@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-ORIG-GUID: oV9gIZZ6jU2svctr4f0QEYZ0MLDNwfgA
X-Proofpoint-GUID: oV9gIZZ6jU2svctr4f0QEYZ0MLDNwfgA
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfX/rfrOkEXa15h
 HBumiO2kaw4eAFi5AAG8Hp3G9mOn0M6dSMadcdkG1PwapDNMxtJ89dQNB/G4v0KncfQObFn+N/h
 42SRIYbT9h4kTvxLfU6KuZGJm2cEUL8=
X-Authority-Analysis: v=2.4 cv=XvNvqlF9 c=1 sm=1 tr=0 ts=6aed1690 cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=NbtrdQoedUgDOuZm1b4A:9 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTA1MDA5NSBTYWx0ZWRfXx8AqXIw+Jg+y
 NdvV3hbesDje5x/namOttjAzRPCeHqHgSvkON60IvIH8P5TIjQIWc+AM6Z+PNrsaiOrhrEvsZef
 YxW7+eMQS7Xoz5OsLOOc2kB61ofoEOUpbAwUkAV674zXAmC76SX/xdfPgdX4Ve6QLq3mfcLIvG0
 AXof8gm5DoJ68/mHTNZczPChIvNhiQewluOLNO3diAIfGqWBxEW70QVD5goIrhwFvd9XiIchILw
 BhXidMEHxRsDGJKNKkDUW6CjlLLWfxHTbctf/vcP2t6xg2uqrKO5Fi3kGtuygXk6ZVm4CyTS6JM
 p9gmyfXJT4zGC6M+Fru0I+ArLZQzfzj51PBp19yDkVYKKoM8ZnF/tiJKj2w48p8EnESWNBe8UG3
 vZB7Ga/ygbAajwrMzT0Qicnvi0B/35Y6z0CNIPHqbu9eJXu4SUVLI6o/IZBJ2yQf/Jp+riuwsaq
 mc2PPLB4ptTXcJFjO+A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-05_06,2026-11-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 adultscore=0 malwarescore=0 impostorscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611050095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_155145_589680_E908F34A 
X-CRM114-Status: GOOD (  12.69  )
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

Add the SC7280 CSIPHY to the generic MIPI CSI2 PHY driver, 
bound to a new "qcom,sc7280-csi2-phy" compatible
and reusing the existing D-PHY 2-phase hw ops
(phy_qcom_mipi_csi2_ops_3ph_1_0). The lane_regs_sc7280[] init
sequence is the CSIPHY 5nm 2-phase 2.5Gbps 4-lane D-PHY register
set ported from the legacy in-tree camss-csiphy-3ph-1-0.c table,
with the entries that table left as do-not-program placeholders
simply omitted here rather than carried as a new marker. The
soc_cfg declares the core/timer clocks (matching x1e80100's and
sa8775p's clock-names convention for this pair, both hardcoded
literals in the driver) and the vdda-hs/vdda-lp supplies.

Like x1e80100 and SA8775P, SC7280's CSIPHY core clock is OPP-scaled
against the sensor's link frequency via the shared csiphy_opp_table
in kodiak.dtsi, so no_opp is left unset here too. SC7280's CSIPHY
has a single power-domain, the Titan Top GDSC, matching
camss.c's sc7280_resources.pd_name = "top" and kodiak.dtsi's
existing camss node; it is not OPP-scaled, only kept enabled.

Reviewed-by: Jigarkumar Zala <jigarkumar.zala@oss.qualcomm.com>
Signed-off-by: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
---
 .../qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c    | 120 ++++++++++++++++++
 .../phy/qualcomm/phy-qcom-mipi-csi2-core.c    |   1 +
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h     |   1 +
 3 files changed, 122 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
index 52994cb721ec..ad6095b77417 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c
@@ -489,3 +489,123 @@ const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p = {
 	.genpds = sa8775p_genpds,
 	.num_genpds = ARRAY_SIZE(sa8775p_genpds),
 };
+
+/* sc7280 5nm 2PH 2p5Gbps 4 lane DPHY mode */
+static const struct mipi_csi2phy_lane_regs lane_regs_sc7280[] = {
+	{.reg_addr = 0x0030, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0900, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0908, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0904, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0904, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0004, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x002C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0034, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0010, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x001C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x003C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0008, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0000, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0038, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0014, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0730, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C80, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C88, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C84, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C84, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0704, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x072C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0734, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0710, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x071C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x073C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0708, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0700, .reg_data = 0x80, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x070c, .reg_data = 0xA5, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0738, .reg_data = 0x1F, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0714, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0728, .reg_data = 0x04, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0230, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A00, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A08, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A04, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0A04, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0204, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x022C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0234, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0210, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x021C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x023C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0208, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0200, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0238, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0214, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0430, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B00, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B08, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B04, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0B04, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0404, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x042C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0434, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0410, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x041C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x043C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0408, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0400, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0438, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0414, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0630, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C00, .reg_data = 0x05, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C08, .reg_data = 0x10, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C04, .reg_data = 0x00, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0C04, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0604, .reg_data = 0x0C, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x062C, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0634, .reg_data = 0x07, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0610, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x061C, .reg_data = 0x08, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x063C, .reg_data = 0xB8, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0608, .reg_data = 0x10, .param_type = CSIPHY_SETTLE_CNT_LOWER_BYTE},
+	{.reg_addr = 0x0600, .reg_data = 0x8D, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0638, .reg_data = 0xFE, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0614, .reg_data = 0x60, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0800, .reg_data = 0x02, .param_type = CSIPHY_DEFAULT_PARAMS},
+	{.reg_addr = 0x0884, .reg_data = 0x01, .param_type = CSIPHY_DEFAULT_PARAMS},
+};
+
+static const char * const sc7280_clks[] = {
+	"core",
+	"timer",
+};
+
+static const char * const sc7280_supplies[] = {
+	"vdda-hs",
+	"vdda-lp",
+};
+
+static const struct mipi_csi2_genpd sc7280_genpds[] = {
+	{ .name = "top", .scaled = false },
+};
+
+const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sc7280 = {
+	.ops = &phy_qcom_mipi_csi2_ops_3ph_1_0,
+	.reg_info = {
+		.init_seq = lane_regs_sc7280,
+		.lane_array_size = ARRAY_SIZE(lane_regs_sc7280),
+		.common_regs_offset = 0x800,
+	},
+	.supply_names = (const char **)sc7280_supplies,
+	.num_supplies = ARRAY_SIZE(sc7280_supplies),
+	.clk_names = (const char **)sc7280_clks,
+	.num_clk = ARRAY_SIZE(sc7280_clks),
+	.genpds = sc7280_genpds,
+	.num_genpds = ARRAY_SIZE(sc7280_genpds),
+};
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
index d0e08d4bbea5..a1c3491a43f6 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c
@@ -455,6 +455,7 @@ static int phy_qcom_mipi_csi2_probe(struct platform_device *pdev)
 
 static const struct of_device_id phy_qcom_mipi_csi2_of_match_table[] = {
 	{ .compatible	= "qcom,sa8775p-csi2-phy", .data = &mipi_csi2_dphy_sa8775p },
+	{ .compatible	= "qcom,sc7280-csi2-phy", .data = &mipi_csi2_dphy_sc7280 },
 	{ .compatible	= "qcom,x1e80100-csi2-phy", .data = &mipi_csi2_dphy_4nm_x1e },
 	{ }
 };
diff --git a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
index f092366a0436..7f25dec7a4e5 100644
--- a/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
+++ b/drivers/phy/qualcomm/phy-qcom-mipi-csi2.h
@@ -97,5 +97,6 @@ struct mipi_csi2phy_device {
 
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_4nm_x1e;
 extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sa8775p;
+extern const struct mipi_csi2phy_soc_cfg mipi_csi2_dphy_sc7280;
 
 #endif /* __PHY_QCOM_MIPI_CSI2_H__ */
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
