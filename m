Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC6C606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 30 Oct 2026 10:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3A/ayWWz;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=Epkmx2KK;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=ARl3GRJj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=KaDZ6fM6OLw/B0dq0pSmPqYYmnqroKkz+RSY/vnQRXE=; b=3A/ayWWz8epB9xdNlKTCgwjPKz
	buL346uqDn8zmkhJWxHUIquJLE9jnPR40Q9UZVSGRB4/XQUl1kzaMgvSgkzm7KGv4Bj8vscJUxic+
	/0xDOr23SzAOonvU+YR6FoT8iG1E3sa1uNxjP0jKg7BZsiYlpmnpwyy2f7veHVCzpf8uFAS/KQj/b
	/PcSBf/cfUGOMl1DMRiApE5FkQjQ2P3AzcLljSUavRjpgrueFFfQgHEpSk/eHfsZxnpWFH6Z2yUfB
	de6sPgbbMtNhwezv1XWjBYIl38J2tr+2v/r2YdRrXLRs1BBL7Gq8xlN6VTJoN+c7GESX+kflgUVPj
	f0t9VnAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkGd-0000000BTNH-37Y8;
	Fri, 30 Oct 2026 10:55:27 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkGa-0000000BTLa-0W1l
	for linux-phy@lists.infradead.org;
	Fri, 30 Oct 2026 10:55:26 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69U8FKg42733275
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 10:55:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=5UNOqAv6CFpckuRjuO223jJQL5dzFe29ZKu
	FERbyP+k=; b=Epkmx2KK+Px/nUuuIs6qLYT1MYchjvoiDSYzmRm8o7jthcIuq+R
	Uf1jlX74a8xGHuizIleP7oMIPQ6MlKEAbTnNOuR1cpBra/OZgnrWEZ/S2uKlVjAZ
	W5GM9ruphWs6ndjD2rN93D9094otCb5038jom1vxtmm9guLs6zlpoUlGjEK/TWtG
	Tw3D4VN8+Ve0/gtAPX+RQuq/a7LvkQwvjVlu2nGETOhkCa2fQ53tANf+TQJyZg1G
	CD6DpcqDrm9EieuJsEZiKAq4mp+K5A+w5M4dXxqVkp7qJtg7ii3pZR9NxetkMT/z
	3cMnW5oRcORoUlpgteK9rpNyMMPdJ6x9SJA==
Received: from mail-dl1-f69.google.com (mail-dl1-f69.google.com [74.125.82.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hme6qjjd4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 10:55:22 +0000 (GMT)
Received: by mail-dl1-f69.google.com with SMTP id a92af1059eb24-18eb2616974so1946999c88.1
        for <linux-phy@lists.infradead.org>; Fri, 30 Oct 2026 03:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793357722; x=1793962522; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5UNOqAv6CFpckuRjuO223jJQL5dzFe29ZKuFERbyP+k=;
        b=ARl3GRJjPWBhXkDXNNaYODE0YaPKNc23pquPIsvEcFEfXd3dPJV4iVujrbYSQ/2t81
         b71YnNZ0fejfa8g5GdmymH5Rd1V9T397WchLMyfvrjGawEnEsdAR1fyEzLAQgeqpJaaw
         IjinpalM3jwCjTB/Od9m7HDY4MQGlk0DgoPv3MN0R1Mfrf/aIfkrfl/SrFNHU4ihv08j
         avTtlm2irC3aqJ4io6IJsth0vmMZbUsrt7OJH2CupiWk8we3SOn0+K/ANf6uRq5aeXTI
         mq4dXQ8H4lxQTxSpjwjnuwie/1OMdZzXDeSL/qFrXpsZbha8EXBCIDsyKyMsX04Ez9YF
         PPmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793357722; x=1793962522;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5UNOqAv6CFpckuRjuO223jJQL5dzFe29ZKuFERbyP+k=;
        b=Zmyixh1f6PdmTiCkaGeMAs0Pc4ya7F+UVsKUy5lBzDS5MK9COnQ6VNOd6yOvjoPz08
         1TIxJ6duW0AnGLYzmJLIC5zqFLZskXpfpp32jtbT5quMZVV9H+TExH8Fyn6C3aXVdtnf
         4B7wzhjpqgumKVo2SuyrwUMOtkSNkE47InZkWas9GyLOFsMmSFCQeGVgGU/nPO7lCKFn
         osKvUvgGF3iC48G5/yVRP87n0KXkLaXtAaARDIQgb4ByPI2KDwBE9sfgfAbuFY5tPLeD
         1zdvhRw+eFoCpU/OiAVwCiDCZ2b+EuyespHE6Y26cm0esbsCP55VU/IsoqMjud1nFjyd
         vn7g==
X-Forwarded-Encrypted: i=1; AKwUvBw08oNfvcYhyhE27gw/YhKolejxgU5zM1GDzBqdbPm6z1LeZWkS98jfVi9Si+rE4S4YQfGmFtuWenM=@lists.infradead.org
X-Gm-Message-State: AFq9FYLqptW3dN1wW0SSuR7gJuOW/rYcb6osf2ltrRCMPqqHvglasu/F
	tO2lSljqlsnUMkPkStYmz2odCuxqZzNkfC2nLKU+0II87ssxvqblgi984eMtXwmQqAX79CNjzY+
	vg7G7SQPna5IgU2ixJp2KXpu6sNshXLi70WunWV8FjZxHbmgxOzy3DkFnnIUORylN0pGl
X-Gm-Gg: AYBFou0xiZTOVb6dLpWz/nBIrt1gN9vK5HKlM8DIRVbFWnwLq+9bG49MQpE8yLb0HdH
	IfHq+y+4yBPzl18g2zj7TZQqNvOwc2HCorv7hTnu6/JQPmfOU+cqf8BO0OW6v0ti5RTtU7CYi3k
	QRmjpErXjfTruG2yApmBBs5J4CyqU75nEG5bT+I9cU21kgUQA6YEONEkQFbOb0UNdTQPI0O7xQ3
	GwH/ZQQuurt/orClpFZewVMvrlyVrX8/zlwzdqaL6IqtSOs4a4P7E1mgCWxNz+wvnJDuu2PpksF
	s+Yx6hkHz3vptXrAH96PH1Mkv+VnHkglNFZt5vdvbHnbvhfdNBI6Z5wyfsownDO4S+9QQxHjMt6
	daBEet7pmeh5Cfaty9jn1Sqt6m8O1xGcDFirc3XC6kR9uYkJkc8eUWU/SlijqqgIMjj4MBsliWm
	51ev0=
X-Received: by 2002:a05:701b:2050:10b0:152:92c6:8b58 with SMTP id a92af1059eb24-1ac5c555078mr2865694c88.35.1793357721682;
        Fri, 30 Oct 2026 03:55:21 -0700 (PDT)
X-Received: by 2002:a05:701b:2050:10b0:152:92c6:8b58 with SMTP id a92af1059eb24-1ac5c555078mr2865661c88.35.1793357721067;
        Fri, 30 Oct 2026 03:55:21 -0700 (PDT)
Received: from hu-taparana-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac1a9e2ed3sm6017266c88.19.2026.10.30.03.55.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Oct 2026 03:55:20 -0700 (PDT)
From: Tapas Rana <tapas.rana@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Prashanth K <prashanth.k@oss.qualcomm.com>,
        Tapas Rana <tapas.rana@oss.qualcomm.com>
Subject: [PATCH v2] phy: qcom: qmp-combo: update offsets table for x1e80100
Date: Fri, 30 Oct 2026 16:24:24 +0530
Message-ID: <20261030105515.1948430-1-tapas.rana@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-GUID: xASl3nM4V4gs7pi8hhzvCXd7mEWfGFfQ
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMwMDA0MyBTYWx0ZWRfX8WgFRAvzLtVF
 cpjLWEXxqrIAl8upa+Xc39G8kbGhl7u75QS+wxoz7/v2ASP8H94J0JGWxr8cUXqb05gNBZfEVui
 ATDHhF709GTsSZyZ911oOM0Ciu16kYg=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMwMDA0MyBTYWx0ZWRfX+I80IbiSY207
 TG9cQ6KorocLXAY1VqHMo5QdgvzK73rQVDs1k0LGwlxSPJFSu+TOf66HvZusNWt5vYzAlkE1T5v
 XY2VTmGzSLR9/FLu9S3eRa/b/TFRtN0BNoD2Q6cUo/ffpJwnRHwfATq4qXFxYKAAzSarhH5LDQo
 cuvhKSYOJs9ZHKF8+844Qnn2eGz3VK1vXZsOW6HTshR2/vnHNBDeggKTXIxr2T9XQaJNK6yOxiB
 wc/OO+jeJ88Hb/KdaNExW8alsp//exofa/0U+ll4YIEMONWXGoekMCYiJQLKQw5syzkZRCX2vYs
 U+W3T5MKr6QkO4r7oyJ2jEd28fgdmvjCKuE/K3bnhOrxLUfXBZYYFAR0+prD1Zytwrm7bDdeDhz
 sKwyIEw87iKInh96P59TgA2Bj/OhdNMt7RpqjMo62R/bR7714Pc0naTXs5TG1ODXcM9Z1sHJFve
 yo59WfyxUDADlx5oNmg==
X-Proofpoint-ORIG-GUID: xASl3nM4V4gs7pi8hhzvCXd7mEWfGFfQ
X-Authority-Analysis: v=2.4 cv=TpVzFzXh c=1 sm=1 tr=0 ts=6ae4779a cx=c_pps
 a=kVLUcbK0zfr7ocalXnG1qA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=WK3x7LZNRzmlshLj7x4A:9 a=vr4QvYf-bLy2KjpDp97w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-30_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 adultscore=0 suspectscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610300043
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035524_446123_F45A9CAA 
X-CRM114-Status: GOOD (  12.75  )
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

x1e80100_usb3dpphy_cfg uses qmp_v6_n4_usb3phy_regs_layout, which
places QPHY_PCS_CLAMP_ENABLE in the PCS_AON register space. However,
it uses qmp_combo_offsets_v5 currently, which does not define the
usb3_pcs_aon region. As a result, qmp->pcs_aon is not mapped and
autonomous mode falls back to pcs_misc for clamp control.

Add a dedicated USB3+DP V6 offsets table with usb3_pcs_aon included
and use it for x1e80100_usb3dpphy_cfg so clamp control is performed
through the correct PCS_AON register space.

Signed-off-by: Tapas Rana <tapas.rana@oss.qualcomm.com>
---
Changes in v2:
 - Updated the mail address in SOB tag.

 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 187f0cd11f6c..aa9dc9716574 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -2762,6 +2762,21 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v10 = {
 	.dp_dp_phy	= 0x3c00,
 };
 
+static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v6 = {
+	.com		= 0x0000,
+	.txa		= 0x0400,
+	.rxa		= 0x0600,
+	.txb		= 0x0a00,
+	.rxb		= 0x0c00,
+	.usb3_serdes	= 0x1000,
+	.usb3_pcs_misc	= 0x1200,
+	.usb3_pcs	= 0x1400,
+	.usb3_pcs_aon	= 0x0100,
+	.usb3_pcs_usb	= 0x1700,
+	.dp_serdes	= 0x2000,
+	.dp_dp_phy	= 0x2200,
+};
+
 static const struct qmp_combo_offsets qmp_combo_usb43dp_offsets_v8 = {
 	.com		= 0x0000,
 	.usb3_pcs_aon	= 0x0100,
@@ -3003,7 +3018,7 @@ static const struct qmp_phy_cfg sc8280xp_usb43dpphy_cfg = {
 };
 
 static const struct qmp_phy_cfg x1e80100_usb3dpphy_cfg = {
-	.offsets		= &qmp_combo_offsets_v5,
+	.offsets		= &qmp_combo_usb43dp_offsets_v6,
 
 	.serdes_tbl		= x1e80100_usb43dp_serdes_tbl,
 	.serdes_tbl_num		= ARRAY_SIZE(x1e80100_usb43dp_serdes_tbl),
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
