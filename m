Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0C379CCF2C1
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ElXgQnuTY4u0JtspddhjfTt3G8Z1/Upb7vz4BtDPTCI=; b=xg30Dv64QlRaAG
	e8NDMXZUiFh1DyTS9rVckQKYR+4dqH2HO64Gqlv4QnmLjMrmo+xrv5WJwKPbiygXkhivopOPonBsH
	JSGJeKN6VWFl54+sI8fkxiYB3NQRD6yjokHEmr4MZ+DVbcSTZWwOzVp4oG+ljp0IQSyYPADicB7sf
	2u4AHWBUQl/XDaXaIvwE7XQNl7a2b8ysslcqfDYdKexNpEkFbPUzi1qxKirui44lY/BasRApM0+lP
	812ZBHe1cj2Qzq5roVeybQjiTj1tMQXOh/BMebKUsN1Amifte7kZKvr0M2AnCO6wLBxM7UQzG4V+8
	hLvvQ/Jw8PPzgankB4qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yP-00000004ywp-1JMU;
	Sat, 17 Oct 2026 17:13:35 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yM-00000004yvn-4AuU
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:32 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HG9puO2598631
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	YAhtsjeGVm9Y9dmXAQSVWYBk/S4IJYojGbMjX5OJWPk=; b=mrLV/mp8o0rjl67k
	/Oel/i61Mi5YyJ9v3WV5Qgt6PCtgYmi7O5SgirLH3WE7dL0BWXBK0slGWKpSETRZ
	U0TPyw6ydT0dH0ONtPllAc63F6J7LUCdOAu2S4D0/CVu9CFi4lRPJvLcznnBZz7l
	M1db7WB6cRMZ8IndxrVwFl+HYR2ywozmXl5CNVk3ufMday05WT6jkeO9onbcFUPo
	VEOj/+/wZDjGui+QXpj33xp3uXhbPO7YwlKmgugqmNQwO9cDMOIsgCNTzDD0UPmE
	rwsdwNA/2TotfWvgwA5S0ckws6Uy4yMWy3iUBiiK2uHHjiLFNIfo80TzkCpVMQYO
	w+b6ow==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbxqfsqhe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:30 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-33c35f5ca6cso1755085eec.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257210; x=1792862010; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YAhtsjeGVm9Y9dmXAQSVWYBk/S4IJYojGbMjX5OJWPk=;
        b=B+KXVYtchEFfxNJeof6edBTqejQl30yZSqw4mP42uo5QGkWfMFzCClAnmM+Gb89skl
         z9YUiAprfkTpIMIM+H5KClQcHSTM3722nzgYUjtQCwyGOrKa/hjfhM+FH9KAWrzt2LMU
         s8ymx9Dqp0Ti9w5FOPTU4HZz73Aj0QhQEO7347tfLQyuQjmuv9IMi+NDWW+rltQSTZAN
         c0tP2pXDVFjSfnZYinQGy5MpiC+v8WUoEIM234XxAa3EwDsW3DknZWVfq+OUQOpAO4or
         eE8KKt3a/Kke7A1EcFGGoRdIR/Rd8coNz+NAveqo1KS98ZiMct0KmJmXMHmJ5hH2neaZ
         ovhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257210; x=1792862010;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=YAhtsjeGVm9Y9dmXAQSVWYBk/S4IJYojGbMjX5OJWPk=;
        b=LxM6ZAk3D71QOk81n9VO1poD1wE+2Mg5qGPDV5pkfhwOJZhnUCr0wALr3PxthtmxGn
         XOe32qC87CrghX3QVEzqTl+mdlAS7sxTIJBNn48RnzMxtjzyRK5kNhChuOWd4A/NYOMI
         9Y5B9ES7++ravi8SLCVl1B+qqo23UPy0idXO6imD7MvB450dQyxgi+DDTuGSecROjqY/
         ZrnSbxKe4WAwyGioCyAgacZzfL1EaaQ3zMUOOaLexEnriv8vauHVRlSy39E48xLJ5mkv
         9XbCT6AmfFFIFLaMtzjZr5tlwhaz+YjZ5mmdTuy7YBf78glW46N8vGWvA9rjs6yuw+os
         oMzg==
X-Forwarded-Encrypted: i=1; AKwUvByxM+qrh7NDInpSIy/F8dt+14V+E5DbPeW8EczzD7dfK3NPbjyJSiCzy4wJrSH9bHU8YnlZsk+unYc=@lists.infradead.org
X-Gm-Message-State: AFq9FYLxyaYGmJ4YXLnl8Rp4lkNIyrbgDEK4A9HgIEuwdNHjinFsH3xm
	otGsBh/QCXC0FxtTx5jB7NRmpaKAS2aG+w+hG3U5nt1yc9Rpsjmk23iQEywSJCyuaRkU6AzeoDz
	fe+AkY311aGT2XEtAnO7/oRzWCOUrkTr2o7Yi0nKZKfy+2qN9YNdGp6SLe+eycAwkgwZ8lYvfVY
	EQ
X-Gm-Gg: AYBFou2l0DYWKypIbrDUlIb22DAxjsZ+m6T/5SNP5cCRzum2k2u9NPImR7P1F0ZpofQ
	eaSdK6wMuMB6EqXyXS58QYyhukEYAFECrqwgEtte3K8f7lCVWIlv0jBXRddbJw0WCjqMH95Rqmq
	moNdQ/07BKyLmwQ3CJHoUmXnx00v1kMxRNtBuQMNK0mw/R61ZEsjzhYvxzF7bDKbp/5DQVMt0fd
	3ef9bJnOV2wz4UT+2nIh+StMm0vtYEBfigpXlEORRckSFTw6gZ0RSDp/qRMRwsDXoq2iGReJbrQ
	uveGxaX7vqsWak9rZTcKPUtQSjSO2A9kosh+S2u1qKNtNLmkyhb1cu67+vtwJaGy95Op9vHkjp+
	KWG/NoLq1F3czPcpNmUZlqLek0iv/iQ==
X-Received: by 2002:a05:693c:39c4:b0:35e:cfe7:4c5e with SMTP id 5a478bee46e88-361a284a463mr4376592eec.41.1792257209668;
        Sat, 17 Oct 2026 10:13:29 -0700 (PDT)
X-Received: by 2002:a05:693c:39c4:b0:35e:cfe7:4c5e with SMTP id 5a478bee46e88-361a284a463mr4376551eec.41.1792257209000;
        Sat, 17 Oct 2026 10:13:29 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:28 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Date: Sat, 17 Oct 2026 22:43:08 +0530
Subject: [PATCH RFC 1/6] phy: core: Add MIPI C-PHY configurations
MIME-Version: 1.0
Message-Id: <20261017-cphy_support-v1-1-8b0e1237ce95@oss.qualcomm.com>
References: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
In-Reply-To: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Vikram Sharma <vikram.sharma@oss.qualcomm.com>,
        linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257199; l=2564;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=iLTG4aXBJUiekJtaSGEXYlzQAoG+/N4ms096TFYDMFg=;
 b=1V1fOBAUlXQzeyOk6+8IBwwFEUOKq3bVHM3GzS68oaChvztykygkzOInlOp5bavxsytAoE9qL
 KE7av4aCjXzDPbW/KTPgWO+IH+OTNmu9x5OIF36nucXhvVrhI2jBQZt
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfXw49SY4e0xtq4
 oNpGRqIDGDMSgxUAWHZsRDEy04i2vo5Eozl9xMHifUGmcYUjJLzm/KY8+DaeCReNK1lP+0wJ8MB
 D3PcXHM8ZMV+ZT3/9C1zSd+rMiymEDQ=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX7jxqE6uURTtq
 mL9opQwqvqU0oylrq+qFTu8M2A1PRii5ricYihUdpC721uZETPhPH6GnRnk5O3PvuN2mzYWARu6
 gUlQa8A6a+uABzhrpH0JwUHM9Na4TpdMm5flKBNm/iHDmYfC/d+N6A8Jle9LPQaVdCtjXHqlqjh
 7MRFgnUbmVqnWaxR8env80F5gHvfHB3+byQ8q1blzmiXw38q/OtNRgKnVciBIYRIJDH0fVQTrPf
 LN0uDdN2INrX64O0WA7mGqt64gn5FN3P5OO8I/zkitTx6tYjFzHeIxCIMB5u95ZifLi0S85KdX4
 cslQOvA0bgW6o54sP/6AU/mJEn39PeTb6nApt47dshoD4xtXfcYNNszvELGPG4MPNsGKFbqvlf5
 FtEo1tzltrIcFVDOjg1BZjSoGx6Xn+VjCsX8gNltXoQML+7M5LCz1ZjiYVEi7zLNafaOCO+i6Rk
 03TZcNixqaeulPXB9vA==
X-Proofpoint-ORIG-GUID: 1EZOcyfUBTrxbrxcPWyS3J6MIVCRzZX9
X-Proofpoint-GUID: 1EZOcyfUBTrxbrxcPWyS3J6MIVCRzZX9
X-Authority-Analysis: v=2.4 cv=RYMFmFtv c=1 sm=1 tr=0 ts=6ad3acba cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=EUspDBNiAAAA:8 a=L7UytvBZ7DJW4f3bhNUA:9 a=QEXdDO2ut3YA:10
 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 spamscore=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101331_045958_22EB8F21 
X-CRM114-Status: GOOD (  13.31  )
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

MIPI CSI-2 receivers can be connected through C-PHY as well as D-PHY.
C-PHY uses trios instead of lanes and needs mode-specific timings passed
to the PHY provider.

Add PHY_MODE_MIPI_CPHY and C-PHY configure option carrying the link rate,
trio count and C-PHY prepare/preamble timing.

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
 include/linux/phy/phy.h | 47 +++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/include/linux/phy/phy.h b/include/linux/phy/phy.h
index c480d6cb42c500a295eef3bdf42fbc6d36f54bf8..c3784b679f3a26686324286d407cfa9d258579f1 100644
--- a/include/linux/phy/phy.h
+++ b/include/linux/phy/phy.h
@@ -47,6 +47,7 @@ enum phy_mode {
 	PHY_MODE_DP,
 	PHY_MODE_HDMI,
 	PHY_MODE_TBT,
+	PHY_MODE_MIPI_CPHY,
 };
 
 enum phy_media {
@@ -64,11 +65,56 @@ union phy_notify {
 	enum phy_ufs_state ufs_state;
 };
 
+/**
+ * struct phy_configure_opts_mipi_cphy - MIPI C-PHY configuration set
+ *
+ * This structure is used to represent the configuration state of a
+ * MIPI C-PHY phy.
+ */
+struct phy_configure_opts_mipi_cphy {
+	/**
+	 * @symbol_rate:
+	 *
+	 * Symbol rate per trio, in symbols per second.
+	 */
+	u64 symbol_rate;
+
+	/**
+	 * @trios:
+	 *
+	 * Number of active C-PHY trios.
+	 *
+	 * Minimum value: 1
+	 * Maximum value: 3
+	 */
+	unsigned int trios;
+
+	/**
+	 * @t_prepare_ns:
+	 *
+	 * C-PHY T_PREPARE timing value, in nanoseconds.
+	 * Time the transmitter drives the LP-00 state before
+	 * starting the HS preamble sequence.
+	 */
+	u32 t_prepare_ns;
+
+	/**
+	 * @t_preamble_ns:
+	 *
+	 * C-PHY T_PREAMBLE timing value, in nanoseconds.
+	 * Duration of the HS preamble sequence transmitted
+	 * before the first payload symbol.
+	 */
+	u32 t_preamble_ns;
+};
+
 /**
  * union phy_configure_opts - Opaque generic phy configuration
  *
  * @mipi_dphy:	Configuration set applicable for phys supporting
  *		the MIPI_DPHY phy mode.
+ * @mipi_cphy:	Configuration set applicable for phys supporting
+ *		the MIPI_CPHY phy mode.
  * @dp:		Configuration set applicable for phys supporting
  *		the DisplayPort protocol.
  * @lvds:	Configuration set applicable for phys supporting
@@ -78,6 +124,7 @@ union phy_notify {
  */
 union phy_configure_opts {
 	struct phy_configure_opts_mipi_dphy	mipi_dphy;
+	struct phy_configure_opts_mipi_cphy	mipi_cphy;
 	struct phy_configure_opts_dp		dp;
 	struct phy_configure_opts_lvds		lvds;
 	struct phy_configure_opts_hdmi		hdmi;

-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
