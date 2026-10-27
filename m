Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9106606A31D
	for <linux-phy@archiver.kernel.org>; Tue, 27 Oct 2026 01:55:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w3QaqMqC;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LhAuELVj;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=aqvbbOY8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=L9XdDbwB/of52YT1dpqKNp4YUJmXwYpVhtEBH1MZ9hw=; b=w3QaqMqChxrLkppdkjOe6cpM3A
	hAXmCWnOWw+A5AvrLBnZOC2IfMNrdAyhALMFhhFw09z2ej2bsTnfs7Rsw6uki8F5BWoM4deol+DF8
	0DyCHfNa9VAdS12xEDaKZbnANfJlmNPKeVxOea1eP0m7Qc5ZTz5qH4Z9FiZW14Ryj6D+Ckvl6WcW7
	5tMwiGLBJxRNXf8eai8ch5E6SmKomQS+pD5poHnP+qbrJ/Tax02hvvB7oYncxtF1tvAG3pFmLdnZ4
	TBpHP2/Cub2puGZzuI5PgbbnuRs1QIhzD9P3Ppu3dDnHAzMJYctRdH1Z15AaWkShu0IdsfrCMjolL
	gj0GwJUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLWPt-00000003cMM-1gwM;
	Tue, 27 Oct 2026 01:55:57 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLWPq-00000003cLq-0nMQ
	for linux-phy@lists.infradead.org;
	Tue, 27 Oct 2026 01:55:56 +0000
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69QMOxAf337391
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 01:55:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mVOw01N8f93qaNHdsyiTHTU8YU7N7ALu4F7
	ZNIXUHgA=; b=LhAuELVjKnhasKoO/qkllfXtOesRveW5Yp3ido/P4vVOOwrgm2h
	oamqO93pnWLgsAUBkFL5EtoKpgF60k/k+ON4IALTCDFxAbeZwGjQgy0TqijihDN1
	uk571MLu4lWSYwDcujo0KRYnRwA6s6sbrsCuG+nLfmILIfEhv8ym9wmTFNsoHKmh
	V+r6SHeCleMgNiIapOBBgfb2pezzWWr2xEN1+5Vvu5qTdZjSyLhu8uU5FVerlvkB
	iR7KrsZ7i+qkI13bm/mMIFAWoYQFmx97Mb6Hbwh26ELdSgDRWyoqYC9vRN4lx2xq
	VqKwk/VvIW7nd4UOdZNLq1Jl+TMp853JXPQ==
Received: from mail-dy1-f200.google.com (mail-dy1-f200.google.com [74.125.82.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hj56y34h5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 27 Oct 2026 01:55:52 +0000 (GMT)
Received: by mail-dy1-f200.google.com with SMTP id 5a478bee46e88-35cbea41088so5826331eec.1
        for <linux-phy@lists.infradead.org>; Mon, 26 Oct 2026 18:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793066151; x=1793670951; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mVOw01N8f93qaNHdsyiTHTU8YU7N7ALu4F7ZNIXUHgA=;
        b=aqvbbOY8L1W8b6IeGfUCRfzTifI8dUGrJMCr3PhwUCFuMDgoEWTiNTmecmMIG9ueQJ
         VUGCJ15ScYpVQumI0jHFIVwxf9p5hK/ggh9ZXuBvp9TtZK1ACnBEmD454l5Kf8O/iGN1
         pjtRRSlSt955+No+yaYXGyF37Yiz9qIpHXhUhKcYLidi18h8Zo2nH5wNzxT9ENtKJilu
         iugqGTTGzKORsokqt0hQy100zRg5MK1MkLNzx1tKrm6htN7wmtf8MCXfw/zjIUad9xRE
         DgQgg9A4nPs8HXKPRJPjtZdfV/q/M53vwJOW89fDn62xDMgnVTBI7BFeQkd2cTNzADwE
         WzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793066151; x=1793670951;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mVOw01N8f93qaNHdsyiTHTU8YU7N7ALu4F7ZNIXUHgA=;
        b=x0jsMOtZbRRLmTQx2upEiOVI/mDostTr7KC2wIsRFLnUh1NTSypBXIKhqYgo9uPAKD
         xVGTNOfDUwKuhnqQybvEAb02z5agmG1Qq8ryfPz9P94JpszVPzrcgwQE2+TVSW+xtq5v
         X4mjxErkm15AAn8/RhcfB+SLTBxTaShOFEmc0DB/R6ONVSJ3hD7eEXSsqqaQvJPH3gUA
         44H8AxM37PqTIxITkUJL//IPDMgaR+6b/mCxB2Bevguadu9VltCuv7YAocAFIWpiIqq8
         lJuVywkKRRWOMVLtxBuDq+5/oobxCDKaplZmhqqyP8pYzESYeoSK/FELXkz1jF/SSKOs
         r9wQ==
X-Forwarded-Encrypted: i=1; AKwUvBz0h1tEyUOLXVuQALnnMiBlF6PQd6jWuk5wvKTEUzfmU3MPA8fh0fx9yq2R0BRcExD/FiIEQ3UtbMI=@lists.infradead.org
X-Gm-Message-State: AFq9FYLhSRKyT73COAWdXAT7IZ3Q6Y6EXJuIlTJytOcfNdx/lA3qdhvA
	cd9oTp/1ai/UUt7cf4bWhWa5tS3lDLneeuBl1ozm4lQhU5mKVZ1foLcQB+P/GAjW+Bhj4cCrZXK
	5mHjrLJZUkhoyKVWaWxxa+gYeCLxW9Gp4gj0StNkJSdj4PF9a+fZufU6J5I002u09tUAC
X-Gm-Gg: AYBFou2zuJBkb/FIC5PrtV1lA4J/B23y47svMKVPDjHhgg9PbnPav+8k3/dx5HGtYV1
	nCMJ+FzAPJdVIsty2kIinCWo4wTfwefc0r431K7NbHl5sO38MsMRdXh51aCirxqhuzVvpT8djU5
	UyD+s9/GJQptGQJKKn5iW1PwHCqAbJVU4CWyYKwW0JLwgjhxB+qAezr1FGDn8fJV1S3SlOmmTR1
	wPZq4g+VyLTjCOrPiWhTtRyPnk7zAyviFOrBV1I/j4c8+aAPzszOqJTw3McJ1KKGUtZpenilc+6
	XatMSFaumh/yGXjh5MXFbqlm9PUKw5O7qg0esRbBbVYKmCzyYctyZBEVVZKj7stnfS6Y10Rh7sh
	VLYv1iJQJngTwjDa6C0mYiwtl5geokG2XSjbTAwEg7JfKGkjU
X-Received: by 2002:a05:7301:1a01:b0:33e:c164:b5d7 with SMTP id 5a478bee46e88-369e834e226mr13349438eec.3.1793066151152;
        Mon, 26 Oct 2026 18:55:51 -0700 (PDT)
X-Received: by 2002:a05:7301:1a01:b0:33e:c164:b5d7 with SMTP id 5a478bee46e88-369e834e226mr13349386eec.3.1793066150420;
        Mon, 26 Oct 2026 18:55:50 -0700 (PDT)
Received: from hu-petche-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-369e8d93663sm33542534eec.13.2026.10.26.18.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Oct 2026 18:55:49 -0700 (PDT)
From: Peter Chen <peter.chen@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Elson Serrao <elson.serrao@oss.qualcomm.com>,
        Ronak Raheja <ronak.raheja@oss.qualcomm.com>,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Udipto Goswami <udipto.goswami@oss.qualcomm.com>,
        Jack Pham <jack.pham@oss.qualcomm.com>,
        Pratham Pratap <pratham.pratap@oss.qualcomm.com>,
        Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Peter Chen <peter.chen@oss.qualcomm.com>
Subject: [PATCH v2 1/1] phy: qualcomm: m31-eusb2: Add register XCFGI_159_152 for SE0 recovery
Date: Mon, 26 Oct 2026 18:55:45 -0700
Message-ID: <20261027015545.2758784-1-peter.chen@oss.qualcomm.com>
X-Mailer: git-send-email 2.43.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDI3MDAwNyBTYWx0ZWRfX3ch6OGwlzkA7
 tJVe02FevnaSwoGgaiQZJeOG+Q4RZEXAD3CpkEdXKDodE1BpEqcOoV7xoh02ghmecFEM70rhWOa
 PF9F7YF9c1JgQjUq6ZPe1XmlrxndR3k=
X-Authority-Analysis: v=2.4 cv=eMeGH3p1 c=1 sm=1 tr=0 ts=6ae004a8 cx=c_pps
 a=PfFC4Oe2JQzmKTvty2cRDw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=fkmqLtjFOitS6APqvyEA:9 a=6Ab_bkdmUrQuMsNx7PHu:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDI3MDAwNyBTYWx0ZWRfX/JZ1hBjXo6+S
 hzhfRWpfdSYBzXKwt831SYOmORqcPK7qR49o9F3mAOkU1Mu70STQGD4kIzkTl+l4VY9AkLRanhT
 ucgCZT6Lp/epQ6IgHDZOzhuhRU4xQHl0uj6yUAwEcAF1sGlXakms6m5RH+5zdsZESqU6NKNpt7j
 GvDBeUuSIwFngWC5rHLPgkH1+pOfT3ogUjSOkEueT6Wpx+cle8oUrMl1ahClMQeo1RWUjBNKITD
 bkIPHs3EYIy294r5aB07etjOZ1IOGVRj9kaZjo23wx+qm7jFLF9qWDlJs+Tfk7G6V67SId8n4ce
 HLX2glVLvGkCXNfstffJTFdaSIfXVJ2wq0W75BiuLqOsrlwMAZ7PNnCDDA7Tu5r7bhTpSPJjW5o
 nh0tsspBkHYaNW0hFKUzcHEKmUZmsWjyMxkedefhcegtSxuoQzD66w8dqVKWC6sxsqasrWA97St
 TqJHi5P2bl69wvD91Tw==
X-Proofpoint-GUID: hClPKn5EEyZ3ydTCT-x51MvOdwAgbMWB
X-Proofpoint-ORIG-GUID: hClPKn5EEyZ3ydTCT-x51MvOdwAgbMWB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-26_05,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 spamscore=0 phishscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610270007
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_185554_691611_19C0C671 
X-CRM114-Status: GOOD (  15.87  )
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
X-Spam-Status: No, score=-17.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Elson Serrao <elson.serrao@oss.qualcomm.com>

This patch introduces support for the XCFGI_159_152 register to enable a
hardware-based SE0 recovery mechanism in the M31 PHY when operating in
host mode.

During PHY initialization, spurious pulses from external devices can
interfere with speed negotiation, potentially leading to abnormal
behavior. To mitigate this, the M31 PHY provides a fail-safe mechanism
controlled by bit 159 of the XCFGI register.

When XCFG_SE0_TIMEOUT_EN (bit 159) is set, a hardware counter is
activated to monitor the SE0 state. If SE0 persists for more than 2.5 ms
before entering L0 mode, the PHY interprets this as bus inactivity and
resets the state machine to its default state. After transitioning to
L0, the PHY resumes normal operation in accordance with the eUSB
specification.

Fixes: 9c8504861cc4 ("phy: qcom: Add M31 based eUSB2 PHY driver")
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Elson Serrao <elson.serrao@oss.qualcomm.com>
Signed-off-by: Peter Chen <peter.chen@oss.qualcomm.com>
---
Changes for v2:
- Add Fixes and Reviewed-by tags
- Link to v1: https://lore.kernel.org/all/20261020061811.3127511-1-peter.chen@oss.qualcomm.com/

 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
index 275df38256de..8d954e772585 100644
--- a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -56,6 +56,9 @@
 #define USB_PHY_XCFGI_7_0		(0x15c)
 #define PLL_LOCK_TIME			GENMASK(1, 0)
 
+#define USB_PHY_XCFGI_159_152		(0x1a8)
+#define SE0_TIMEOUT_EN			BIT(7)
+
 #define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
 {				\
 	.off = o,		\
@@ -88,6 +91,13 @@ static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
 };
 
 static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
+	/*
+	 * Set XCFGI[159] to enable SE0 timeout mechanism in M31.
+	 * This enables a counter which will assume bus inactive if
+	 * SE0 is more than 2.5ms and reset the state machine to default
+	 * state.
+	 */
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_159_152, SE0_TIMEOUT_EN, 1),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_39_32, HSTX_PE, 0),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_71_64, HSTX_SWING, 7),
 	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_31_24, HSTX_SLEW, 0),
-- 
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
