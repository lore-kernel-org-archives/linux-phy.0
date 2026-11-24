Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF7C606A681
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=J+kSBBk9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=h/nV7wy1;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=b42Wsi+3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ppsE0C1YdxNNA2YZK9V/LnE65xpWQo5QNS3Ez+Znbvg=; b=J+kSBBk9R1UP1c8MmOmtts9Kmf
	NaGdnoiH9fSKPxOL7bvRH4OjaoMpSjVvhAywVWB71gtemk7HYcb8NUruapjEvIdCE9vi3ZnNdPoo0
	AvWW85F2wpMzJhOEbC2XA7P22hSQigbcf3KtLQlHYTFKHJxigQj+HKeEzt0nMovedEbOiQPbfyuJ6
	kCD8GiV6ru+rjIhC7u3H7pdi7FiU8rt2iplMMtshwGyVL7BJ6bE52yM3SW2T3j2dPqhaiNa+PPmQ5
	GnRPHeIMk+2IQw45093WK/pcbdDrGjYgGldjUhP8uURCPKD2Nc4XVJ71Ta8rnOaU/LRC9Ykds+bFr
	8YCtB2dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiR-00000007h6A-0bSq;
	Tue, 24 Nov 2026 20:02:11 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiN-00000007h4k-154E
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:09 +0000
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOJLOA91723538
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kXrAKTKoyM5xio5+NQ27PIEseG7w5BBqcbm7TB3+sPQ=; b=h/nV7wy1SJGXgXHN
	EuxfE25TSOCIoDL/UIXjrBt3eNdKOtx5SYPV8+tdeM+RVBU8wddGeb2Y8ieWrcBM
	ghdeh8+fj3cSvmS42qHakSK+s6tUAPW3WqlD27+Qs05JjMAzDC70Toc9wAnPURqA
	XRgE5hz84tfTvE/93Kp53pFcSa5LWLmzhFgA/EY4eTLmvMWyVt8xAym8KiLqSrhc
	BKHJKe4zPPJHXv8EartjklKRMoG+fXIEVA4iOxct6Zm4FI3E961ZO+X1G6rKxE/o
	Ep/YEPvORx8fgz8LAgBIkjOh8D9uNsbl6FkwJWuJ6h6G6OvXtkfx/OFEj5W8I2Uj
	3JoYQA==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5gns84s4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:06 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-7cc450e6e1aso221796137.2
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:02:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550526; x=1796155326; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=kXrAKTKoyM5xio5+NQ27PIEseG7w5BBqcbm7TB3+sPQ=;
        b=b42Wsi+3SxEzHd3106EnaI4O+YFR/pl8N3yolUX6u287+cDyOI64l0yExqO+JKjxQv
         +Y5SkuYGxebLjmQq5b9AltqU53prvIBtK9ft79RelB9jc4T0oXAf7r6Gym0T00z5sVx/
         jZENh99yxVOrmh7+/WPMDww9puvNHkxXK6BVfEr5lsXvDgT3QGdUjvVXyaGosZ1nV3L5
         oHRYrhgrOSpRy8vCgXEaS8RfYKz7fV/VGjpPG8bydHjphnJNr1xyyiD+uC30SQ6w8RIo
         HFOlQhJhlHyfp+5t1PQctD4/rgfoF7AHJ0/nnmfqXo9pTvmzRcPUTYeoO8czplmPm+qQ
         4WiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550526; x=1796155326;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=kXrAKTKoyM5xio5+NQ27PIEseG7w5BBqcbm7TB3+sPQ=;
        b=gb464oDpkJ+I/3oZ5WAtwPUcP+VWltPI131DkB3FK4UQ9sW+YpwYlOrdxZJ3P80q5d
         eFZGE5tI1ONoEz5zlFzWsmVRULlt+vzE/eH+ls8ofrMnXSeafquo2xYYqUGGGxsOpR+T
         4+PmV0g9bsP3DkYnmyLDsp6y3iDXfbbMfBgz1c+A9BXx/2BowEaue2cnqGypyNwc7mHD
         jzfObYC0XzaT57xK/8JHh/Xjy+tma8qo6k+0C0qghIodY0FtPpA4ILTEFYF1Ug1AXMvA
         k3O12nTA3UZTOF3rjWV4NeMhJ/WzcuwMwVGDaj05pE6MO2rfffv/RtBbP64cYxfl5qF4
         sGxQ==
X-Forwarded-Encrypted: i=1; AL+hErHk5BLs24hO3s9985p/suFKINpCIdGNZ4F3r49B4KuBz/vW9Tj4CMSFStz+SKCGrXU+yHWbSCGBNe4=@lists.infradead.org
X-Gm-Message-State: APuU4Z8SvPLvJTO0Hdl+TxAtOpz6aP6frxtRAwrfojmHxnsIuKuFcHNE
	LTnWSeH3exvLI/K6Vbw7NE1e6LAZ9WnozRtbigXZbIZCRYHXH43PohP6GfXKw8iH/7vAqrCeS31
	eku9VAiqdQ/4loMu+s9u7rISIc5+uVf3c2+fCnhYiyOBOoNLZ0cmk7Q6q6Wj3iOCFJDBF
X-Gm-Gg: AZFdTZc3uHBm7vo0dNnnJfpgwShKaIROWOPjpITqTavTQeHpQBedKCNqqjxYu5xy9hf
	6cSqy4mFB+V1EDFAHSloMx9Y2NLIv6EXhmEJGBeuSRF3Z8bXplYH+en3R5UIHLZrwWZ1DASGnNS
	uV9gXKGYeuCoFyhuROygsNREx2bhF7pcE5qkE3lL7CRf6OHGlh/5yfbm67pC2jz4tszcXa6S++Y
	IojyOwO+EmpFQ/eWQY94Pxm17t15SVTv9QDecqeCpNH8iI/Eb+BYImjZWL1dglhZUTuPVQY6k2u
	ac0ZTf2KPBq/CcrsTSr0pL/3FemfZa7sREfIPQV5g6ftClcbGxH/OvJovYzleb5RB753+H4NjUF
	7CvNX7teJwK5lBX38JJp2VJ/6VoqKHhGfYuMhx2EY+Y5XulC0C7aHhG5AMMYXN8HFhShw193TQS
	kSht3IXcQ=
X-Received: by 2002:a05:6122:c20f:b0:5ec:b681:f4ca with SMTP id 71dfb90a1353d-5ee8afd6c93mr11460368e0c.4.1795550525492;
        Tue, 24 Nov 2026 12:02:05 -0800 (PST)
X-Received: by 2002:a05:6122:c20f:b0:5ec:b681:f4ca with SMTP id 71dfb90a1353d-5ee8afd6c93mr11460306e0c.4.1795550524926;
        Tue, 24 Nov 2026 12:02:04 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:02:03 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:37 +0100
Subject: [PATCH RFC DNM 08/15] thunderbolt: nhi: Add pre_switch_suspend
 hook
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-8-a9b45c69cd38@oss.qualcomm.com>
References: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
In-Reply-To: <20261124-topic-next-20261116-fsm-mvp-v1-0-a9b45c69cd38@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        Brian Masney <bmasney+clk@redhat.com>,
        Jerome Brunet <jbrunet+clk@baylibre.com>,
        Andreas Noever <andreas.noever@gmail.com>,
        Mika Westerberg <westeri@kernel.org>,
        Yehezkel Bernat <YehezkelShB@gmail.com>,
        Mario Limonciello <mario.limonciello@amd.com>,
        Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-clk@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        usb4-upstream@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=2074;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=w2JBeR9pVQUt5n+Bi6UCt4e2sRq72QDCU1+mYKjh9Fc=;
 b=1ZJEU9y0SMY1cHPgacE5QRcg2RFK1C5T3lOj0EsuHjb3tspsLLFfsvGcEcm6vOxGUnoYmds7Q
 l4V6QgK24ySATiNkZnm4w24s3GDOT/qMj3xzNgD+0XUEznWnLvsHNfs
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-GUID: P0Qztf1EJJeEek278ul4lKw3dpry_BRI
X-Authority-Analysis: v=2.4 cv=G+SJgNk5 c=1 sm=1 tr=0 ts=6b05ed3e cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22 a=EUspDBNiAAAA:8
 a=wKcZSsCu4wochMfWqzUA:9 a=QEXdDO2ut3YA:10 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX7dgOm//XYXV4
 uUTMUm37vjm+49WmqZ3wJGkQq6yiyN7n+kWQEK5d34aXUHzedv+DlDciKCM4jBpdS5gF3bTs7yx
 u8PLjJVyn4N4MNxmJg57eRZ0dcwCul8=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX4AQWQgrdyraZ
 DUh523qfxXsEoT743mM20bWha1OnP5sr2dpapqs6skRJlBMLZEOOu11NEpDSptP186jOCPnhw9v
 bCr+ouPL7iRMCrxWbLrbxSfQ90I30MvFvqMrtwyVY2KFkFQ2MJ1GQ29lkrWHLe3kRRGk/eFq6l8
 T0+zxKwmPG71NSZEX62RkR9XvjPEwWB0RKGVnc/clK0rF/uJlQh67DNn58Nym4mMBgzabuuQB6n
 rfrU3JK7hoCzU1TDypUa+iXkCseXp2TxQ49l82c5mWhMAKzbwv1TCEbXDkt5deI6skLplBvUqP0
 NT/ffPIlPUfdaJ0CSlZlmXVrHHgpiaesEY8NF2RMBM6MOeLxuEB5nocC7cPysHwjmJ8Ojhf6gpz
 FWWSef3F0RcHC4Mw3BvqGQt2Xj8TeFjWGUJL5lCSMnPy+/M2gmG8dciA/T2IWhc3quH1T/hg7PF
 M3w1V1GSVm61KdPTV2A==
X-Proofpoint-ORIG-GUID: P0Qztf1EJJeEek278ul4lKw3dpry_BRI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120207_308211_AD03E0B0 
X-CRM114-Status: GOOD (  14.32  )
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

The Qualcomm router firmware requires a three-way handshake during its
suspend routines as the OS writes the SLP bit to a connected device.

Add a hook right beforehand to allow synchronizing right as it happens.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/thunderbolt/nhi.h    | 2 ++
 drivers/thunderbolt/switch.c | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/thunderbolt/nhi.h b/drivers/thunderbolt/nhi.h
index 71f750451aacae6ca2f8cb37bd8ae7fc5a029818..9bafb84cf60adbdee1f1f083732719e951b88c20 100644
--- a/drivers/thunderbolt/nhi.h
+++ b/drivers/thunderbolt/nhi.h
@@ -53,6 +53,7 @@ extern const struct dev_pm_ops nhi_pm_ops;
  * @release_ring_irq: NHI specific interrupt release hook
  * @is_present: Whether the device is currently present on the parent bus
  * @init_interrupts: NHI specific interrupt initialization hook
+ * @post_switch_suspend: NHI specific hook to call before suspending a switch
  */
 struct tb_nhi_ops {
 	int (*init)(struct tb_nhi *nhi);
@@ -68,6 +69,7 @@ struct tb_nhi_ops {
 	void (*release_ring_irq)(struct tb_ring *ring);
 	bool (*is_present)(struct tb_nhi *nhi);
 	int (*init_interrupts)(struct tb_nhi *nhi);
+	void (*pre_switch_suspend)(struct tb_nhi *nhi);
 };
 
 /*
diff --git a/drivers/thunderbolt/switch.c b/drivers/thunderbolt/switch.c
index d22d8db8f89064b3ed9c2b8beb8d5f0398640f11..4908c8b0e580a500acf9cac000e66a25e2102d47 100644
--- a/drivers/thunderbolt/switch.c
+++ b/drivers/thunderbolt/switch.c
@@ -3660,6 +3660,7 @@ int tb_switch_resume(struct tb_switch *sw, bool runtime)
  */
 void tb_switch_suspend(struct tb_switch *sw, bool runtime)
 {
+	struct tb_nhi *nhi = sw->tb->nhi;
 	unsigned int flags = 0;
 	struct tb_port *port;
 	int err;
@@ -3693,6 +3694,9 @@ void tb_switch_suspend(struct tb_switch *sw, bool runtime)
 
 	tb_switch_set_wake(sw, flags, runtime);
 
+	if (nhi->ops->pre_switch_suspend)
+		nhi->ops->pre_switch_suspend(nhi);
+
 	if (tb_switch_is_usb4(sw))
 		usb4_switch_set_sleep(sw);
 	else

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
