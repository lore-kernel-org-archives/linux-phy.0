Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 770F8606A6BB
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=V/XxozEi;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=VqfIHpcb;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=Xr13WFvJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MM1ZEyWeV2o/sp8tFqGVQkxeAvYJNMUowG808KV93Bg=; b=V/XxozEiZBE9pmV5jYaWhF191w
	2TjErVYo9LurzCPSjlxrt0Li9bULqDbPgvDD1/05kIdYnkxhfZm1QY1AOkt+d2lJ75zkhwsjzmoWd
	qjzDNgEeVsPD8wjIQrVDTWrDr+kGezBn5B96bFBLym9pNeBlBGSGv25/tN9gRhyRmh+yH/DwbLpHI
	0acqJ1k/3UdSe2TEq5uq+qugpxW9CFVzPCrERLZWtON5N1Hzhg708PDe8JwYs5/ti842bVw7yqrPK
	1XLW1E90slACpRkRKtuvSm6tTJ8NcyABydGlIu90spIx4d4qBmT57bnC529VhNLmqJ7qp3+zAOJit
	WFBz8G1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiT-00000007h6z-0wEa;
	Tue, 24 Nov 2026 20:02:13 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiP-00000007h5J-2wkG
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:11 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXLdT2306249
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FtmV9bs0cFqtHg47ZwF2IMxTNlXPSULtGT+At/0DArw=; b=VqfIHpcbNglohcJe
	+f30YZEoEPZsYvtlB+J+XcU8l4TlGiohCVjhFOVMGiQjq+wd9JkJKN8aSN7oOmBI
	vSFuPQ9d3LqoDFAKaTHuVngKngMXu5Yh5/gIDM9zAzRidyEfzWEfnsZCJm1c7vjP
	uVaI7nugv98ZDc9e7jqmRUZsz8OCx+Pz739FaGlOXmKgu8dXK1v8gh+diYBdGg3k
	1U9Fw4jGu4e9tnxDIj8ZDXJ2dYgHB5+ATX2zqO3O3Eue964iU5eZnkKeCsdLfNYN
	jHOK4zqFXbMtMzDKvhCeTnqFAaq/wsHxgkaDHB/mTGVwHW4o7npMdTi+jg18M741
	4hTWbw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5cxk9aum-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:09 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-5ee002e05f9so195764e0c.0
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550523; x=1796155323; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FtmV9bs0cFqtHg47ZwF2IMxTNlXPSULtGT+At/0DArw=;
        b=Xr13WFvJUnpe+uepkqQw2n0usxBAh2YyrXA/KWcjjeDxvBguiQg6a2lkBF+XK8Lvb+
         QDcLSvlGozij24vw+Z58NbKHdFXouSFgiHBcJ8ExRkgRSeq5Xak7FRuG1oaLkj+kdy8I
         fS2k2WRbLGVbpCTO2veX9cT17uVcea4KQBxJc4rXeP25V6oEh/R5ZPwI6K4mydv9GJP0
         dWvB87OYHPFHtsx0RK1fV8JbO4kT1PDd3FWfMPUvU1M83RcW3Q2wYDpTRYvJr49+lc3b
         WzXVyQDT12SsV1b4byiWYwkzPYuuJ1Hn2M6aSjZ8c/Gq/ZVI7qCYM2/22M7dJmdOySE4
         LxRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550523; x=1796155323;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FtmV9bs0cFqtHg47ZwF2IMxTNlXPSULtGT+At/0DArw=;
        b=DqiDubxNWeY2jHqJbsEth16yrr9I5iMAiLnOKinnoIYMMcfAQ5zUC0kVGmaEGETNC7
         +GxEPw/XKrbtIOJP0IEUPK1AHwKnjkqe2+rpzVpTpzWCrgqW8ATpCiJBaGBthAwh+bG+
         UzRTwQfnEAnYy+kP4rsYR6rGUKACqIqBXjAGdVd0CsEUOpg/tLViysBe/5gfIOfOoGXr
         dB0oMKaQa/IXGRtsKslFdQoKg5YiqQG7jZAj7LOyZWkGJOdcPxwqFk3VHPxje0KAyiNY
         RDgfZsKg9soMs1eu6tUHtbE1ne+zzauIwVPdvngniJXDJfqgx/jYqpFEsuaNTqdSm1+N
         lIEQ==
X-Forwarded-Encrypted: i=1; AL+hErHo1yT+jJ/Fc+8YTMNpUXcdJacZGibwkdxQZbT/hx4ZfPsYYURC2ZLAmQuY4ryq1GOsBz8QTp+z8zE=@lists.infradead.org
X-Gm-Message-State: APuU4Z+3bgLirDm4ZuXo91zu0K+QO5oEtwCIB81mNr7Q855InY+kWMJW
	dvOklnKWR7TBqKxchOINjHi3Ma340ChuZ7PxFwz7DKKRwZ3XNaaPIBwNXOhzjJb80m71IlZtsGX
	DL2AHBkuKQGWxpNFteZw13x4lPHAkUi5HtBk4bLUs39oJyxva1w04uBFY5aVcSoBlsBe7
X-Gm-Gg: AZFdTZcLgPEkypW8zOVg6M6pIGf+7NTW4mtlfNr1kBEwqu0D4XnUbRbdDwBYsDgTmkG
	G8xS6cE5Ui7wx7oCqfd5wRAeLFxUl/xLxshlwg9AnWH1vgI7YvfmX4it3qVt9bqt4VnUlTLnc89
	nmsG1PCjKjFBN2IVxe+NQIh9LnD+coLpwjrRs0Bp8uzlWNwPQSMSrXhkQ+T2W0uiqjjfMHKmF4H
	hrDwvLeQQf3w7NuKjStUOb9SUIVnjfWu7IohY7mj3KemK+BAuLcwMyeDAqI8/zzU3DzE5DtrMFe
	VWzNPlQ4kN+MWkGvwaCHG0IDlYR6At3xmf60xqVFG+u0XrCFLYI41/P5a3eyy+tzz494FQpr27U
	dxXz+NCOJsUHbrD/qbSzFGgEYiJhcd2xx3BZHYoYjA7XRcwfDcv6+MKE2KRhVDkEr02ZXPxAtZU
	6XFebVk/g=
X-Received: by 2002:a05:6122:8495:b0:5ce:23fe:84d8 with SMTP id 71dfb90a1353d-5ee8ad0e69dmr9109356e0c.0.1795550522823;
        Tue, 24 Nov 2026 12:02:02 -0800 (PST)
X-Received: by 2002:a05:6122:8495:b0:5ce:23fe:84d8 with SMTP id 71dfb90a1353d-5ee8ad0e69dmr9109244e0c.0.1795550522029;
        Tue, 24 Nov 2026 12:02:02 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:02:01 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:36 +0100
Subject: [PATCH RFC DNM 07/15] thunderbolt: nhi: Process ring completions
 in the threaded IRQ
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-7-a9b45c69cd38@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=12238;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=zgzptO0juMnTmorwZhzOmgRYMBKkjbmea5NgUUDM9G4=;
 b=D5OazM962VNDUGn8keXJVLrzPjXgSrBnM72E6d7VZpMWadRJ/sqMyEcNps+6rumycMMRC9Zjh
 8r5R8g1SxcvBQ2aitJr+dquh/+YWQth+HrHTtrpLvFLb82L157ZKvFw
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXxOkHpcJlmyYV
 f4TS5xEMdXVYMqtHF4gjybIgqxVnj56GjQ/a8AlU1njWlBcQa6U5xSLizCaaQ7YoyUKsL8J1S3r
 0Va0m1nsSqvCqVDpRjN1AOzII0mFiaP8gtr62UdGXPUWAsB7unjIowoGz5ehFWaKfFezNzV8N8w
 9XxldsFQgCX8UrmEusBe6l3I8+3OQpGDQz614FQNK2ytREqLVF6QMkK9pVvpJOynDfIy2BOmdFh
 szXPSKj55yHnuZi7hv9ig5+UC6cSNotadfkPDbk3MvIXdM8E36IGhU3crcmgghBwvJhEo8kYb0/
 Dx5LU92F1D1XPnF0gYSJ/1YQFfVxSuZUDTEAjjP1rGtxYVWPUkBcJ00Dbvv1Z2PY/rbf+NUu1eE
 JFDAup7qNILz6HrUfqgn+3JQwKnGy9HeuBshMwdLTG5Qr/9huAywJpw1rmgLH9dUZp08AINIboS
 yPyr0rGhgrTeryE7x5A==
X-Proofpoint-GUID: RWWBvKacAr3yVtjtBGt_YWIGWoGvFsc4
X-Proofpoint-ORIG-GUID: RWWBvKacAr3yVtjtBGt_YWIGWoGvFsc4
X-Authority-Analysis: v=2.4 cv=TLbQ2Fla c=1 sm=1 tr=0 ts=6b05ed41 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22 a=EUspDBNiAAAA:8
 a=XR_tCNlNi9ieylQGNmwA:9 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX07TWfnqRk+eL
 Sn3bXxkIdBKn1Q8sFHNYinAMLJ5eeWAQhIhiuhNtPgDHoqudIz0vCRloP8jBPHlA8OjRQNEnNnF
 Nawygy1/etV9OgKPDr2oYt8YI6tGl6s=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 impostorscore=0 spamscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120209_760389_25DA5F42 
X-CRM114-Status: GOOD (  23.37  )
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

The Qualcomm USB4 router uses a shared IRQ for all NHI rings.
Scheduling a work item from its threaded handler adds another delay
before completed RX frames are consumed and replacement buffers are
posted.

Process completed descriptors directly from the threaded IRQ instead.
Harvest all completed frames while holding the NHI and ring locks,
replenish RX rings immediately, then invoke frame callbacks after
dropping the locks. Preserve the existing polling-ring path, which must
continue to mask the interrupt and start polling instead.

This removes the workqueue round trip from the common IRQ path without
calling ring consumers under NHI locking. Since the callbacks no longer
run only from ring->work, have tb_ring_stop() and tb_ring_free()
synchronize with the ring interrupt, so they keep returning only after
all callbacks of the ring have finished.

Switch the single MSI fallback of the PCI glue over to the same threaded
handler, which allows dropping nhi_interrupt_work() and the work item
that backed it.

Based on related work by Wesley Cheng.

Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/thunderbolt/nhi.c   | 133 +++++++++++++++++++++++++++++++++++---------
 drivers/thunderbolt/nhi.h   |   2 +-
 drivers/thunderbolt/pci.c   |  15 ++---
 include/linux/thunderbolt.h |   8 +--
 4 files changed, 115 insertions(+), 43 deletions(-)

diff --git a/drivers/thunderbolt/nhi.c b/drivers/thunderbolt/nhi.c
index e48521482c021c7f5f73349ce16519d6088d3250..bcc2b959e3b1a6b014c13a4938ed6f68cb0d0fd8 100644
--- a/drivers/thunderbolt/nhi.c
+++ b/drivers/thunderbolt/nhi.c
@@ -310,6 +310,41 @@ static void ring_write_descriptors(struct tb_ring *ring, bool notify)
 		__ring_notify(ring);
 }
 
+/*
+ * ring_harvest() - collect completed frames
+ * @ring: Ring to collect the frames from
+ * @done: List to move the completed frames to
+ *
+ * Moves all completed frames from the ring buffer to @done and writes new
+ * frames to the ring buffer.
+ *
+ * ring->lock is held.
+ */
+static void ring_harvest(struct tb_ring *ring, struct list_head *done)
+{
+	struct ring_frame *frame;
+
+	lockdep_assert_held(&ring->lock);
+
+	while (!ring_empty(ring)) {
+		if (!(ring->descriptors[ring->tail].flags
+				& RING_DESC_COMPLETED))
+			break;
+		frame = list_first_entry(&ring->in_flight, typeof(*frame),
+					 list);
+		list_move_tail(&frame->list, done);
+		if (!ring->is_tx) {
+			frame->size = ring->descriptors[ring->tail].length;
+			frame->eof = ring->descriptors[ring->tail].eof;
+			frame->sof = ring->descriptors[ring->tail].sof;
+			frame->flags = ring->descriptors[ring->tail].flags;
+		}
+		frame->ring = ring;
+		ring->tail = (ring->tail + 1) % ring->size;
+	}
+	ring_write_descriptors(ring, true);
+}
+
 /*
  * ring_work() - progress completed frames
  *
@@ -337,22 +372,7 @@ static void ring_work(struct work_struct *work)
 		goto invoke_callback;
 	}
 
-	while (!ring_empty(ring)) {
-		if (!(ring->descriptors[ring->tail].flags
-				& RING_DESC_COMPLETED))
-			break;
-		frame = list_first_entry(&ring->in_flight, typeof(*frame),
-					 list);
-		list_move_tail(&frame->list, &done);
-		if (!ring->is_tx) {
-			frame->size = ring->descriptors[ring->tail].length;
-			frame->eof = ring->descriptors[ring->tail].eof;
-			frame->sof = ring->descriptors[ring->tail].sof;
-			frame->flags = ring->descriptors[ring->tail].flags;
-		}
-		ring->tail = (ring->tail + 1) % ring->size;
-	}
-	ring_write_descriptors(ring, true);
+	ring_harvest(ring, &done);
 
 invoke_callback:
 	/* allow callbacks to schedule new work */
@@ -371,6 +391,35 @@ static void ring_work(struct work_struct *work)
 	wake_up(&ring->wait);
 }
 
+/*
+ * ring_process_completions() - invoke the callbacks of completed frames
+ * @done: Frames collected by ring_harvest(), possibly from several rings
+ *
+ * The frames of each ring are contiguous in @done. Like ring_work(), wake
+ * up the waiters of a ring once the callbacks of all its frames have run.
+ */
+static void ring_process_completions(struct list_head *done)
+{
+	struct ring_frame *frame;
+	struct tb_ring *ring;
+
+	while (!list_empty(done)) {
+		frame = list_first_entry(done, typeof(*frame), list);
+		ring = frame->ring;
+		/*
+		 * The callback may reenqueue or delete frame.
+		 * Do not hold on to it.
+		 */
+		list_del_init(&frame->list);
+		if (frame->callback)
+			frame->callback(ring, frame, false);
+
+		if (list_empty(done) ||
+		    list_first_entry(done, typeof(*frame), list)->ring != ring)
+			wake_up(&ring->wait);
+	}
+}
+
 int __tb_ring_enqueue(struct tb_ring *ring, struct ring_frame *frame, bool more)
 {
 	unsigned long flags;
@@ -819,6 +868,19 @@ static bool tb_ring_empty(struct tb_ring *ring)
 	return list_empty(&ring->in_flight);
 }
 
+/*
+ * ring_sync_irq() - wait for the interrupt handler of a ring
+ *
+ * nhi_msi_thread() invokes the callbacks of the frames it has harvested
+ * after dropping the locks, so make sure it has finished with any frames
+ * of a ring that has been stopped or dissociated from the NHI.
+ */
+static void ring_sync_irq(struct tb_ring *ring)
+{
+	if (ring->irq > 0)
+		synchronize_irq(ring->irq);
+}
+
 /**
  * tb_ring_flush() - Waits for a ring to be empty
  * @ring: Ring to wait
@@ -881,6 +943,8 @@ void tb_ring_stop(struct tb_ring *ring)
 	spin_unlock(&ring->lock);
 	spin_unlock_irq(&ring->nhi->lock);
 
+	ring_sync_irq(ring);
+
 	/*
 	 * schedule ring->work to invoke callbacks on all remaining frames.
 	 */
@@ -906,7 +970,7 @@ void tb_ring_free(struct tb_ring *ring)
 	spin_lock_irq(&ring->nhi->lock);
 	/*
 	 * Dissociate the ring from the NHI. This also ensures that
-	 * nhi_interrupt_work cannot reschedule ring->work.
+	 * nhi_msi_thread() cannot harvest its frames anymore.
 	 */
 	if (ring->is_tx)
 		ring->nhi->tx_rings[ring->hop] = NULL;
@@ -919,6 +983,8 @@ void tb_ring_free(struct tb_ring *ring)
 	}
 	spin_unlock_irq(&ring->nhi->lock);
 
+	ring_sync_irq(ring);
+
 	if (nhi->ops->release_ring_irq)
 		nhi->ops->release_ring_irq(ring);
 
@@ -935,8 +1001,8 @@ void tb_ring_free(struct tb_ring *ring)
 
 	/*
 	 * ring->work can no longer be scheduled (it is scheduled only
-	 * by nhi_interrupt_work, ring_stop and ring_msix). Wait for it
-	 * to finish before freeing the ring.
+	 * by ring_stop and ring_msix). Wait for it to finish before
+	 * freeing the ring.
 	 */
 	flush_work(&ring->work);
 	lockdep_unregister_key(&ring->lock_key);
@@ -1022,16 +1088,18 @@ enum nhi_fw_mode nhi_mailbox_mode(struct tb_nhi *nhi)
 	return (enum nhi_fw_mode)val;
 }
 
-void nhi_interrupt_work(struct work_struct *work)
+irqreturn_t nhi_msi_thread(int irq, void *data)
 {
-	struct tb_nhi *nhi = container_of(work, typeof(*nhi), interrupt_work);
+	struct tb_nhi *nhi = data;
+	LIST_HEAD(completed_frames);
+	unsigned long flags;
 	int value = 0; /* Suppress uninitialized usage warning. */
 	int bit;
 	int hop = -1;
 	int type = 0; /* current interrupt type 0: TX, 1: RX, 2: RX overflow */
 	struct tb_ring *ring;
 
-	spin_lock_irq(&nhi->lock);
+	spin_lock_irqsave(&nhi->lock, flags);
 
 	/*
 	 * Starting at REG_RING_NOTIFY_BASE there are three status bitfields
@@ -1073,17 +1141,28 @@ void nhi_interrupt_work(struct work_struct *work)
 		}
 
 		spin_lock(&ring->lock);
-		__ring_interrupt(ring);
+		/*
+		 * Harvest the completions right away instead of deferring
+		 * to ring->work, so that the RX buffers are reposted without
+		 * another scheduling delay during a burst.
+		 */
+		if (ring->start_poll)
+			__ring_interrupt(ring);
+		else if (ring->running)
+			ring_harvest(ring, &completed_frames);
 		spin_unlock(&ring->lock);
 	}
-	spin_unlock_irq(&nhi->lock);
+	spin_unlock_irqrestore(&nhi->lock, flags);
+
+	if (!list_empty(&completed_frames))
+		ring_process_completions(&completed_frames);
+
+	return IRQ_HANDLED;
 }
 
 irqreturn_t nhi_msi(int irq, void *data)
 {
-	struct tb_nhi *nhi = data;
-	schedule_work(&nhi->interrupt_work);
-	return IRQ_HANDLED;
+	return IRQ_WAKE_THREAD;
 }
 
 static int __nhi_suspend_noirq(struct device *dev, bool wakeup)
diff --git a/drivers/thunderbolt/nhi.h b/drivers/thunderbolt/nhi.h
index 88af9ab9fde7afc8af6da412b668663e67380e53..71f750451aacae6ca2f8cb37bd8ae7fc5a029818 100644
--- a/drivers/thunderbolt/nhi.h
+++ b/drivers/thunderbolt/nhi.h
@@ -31,8 +31,8 @@ int nhi_mailbox_cmd(struct tb_nhi *nhi, enum nhi_mailbox_cmd cmd, u32 data);
 enum nhi_fw_mode nhi_mailbox_mode(struct tb_nhi *nhi);
 void nhi_enable_int_throttling(struct tb_nhi *nhi);
 void nhi_disable_interrupts(struct tb_nhi *nhi);
-void nhi_interrupt_work(struct work_struct *work);
 irqreturn_t nhi_msi(int irq, void *data);
+irqreturn_t nhi_msi_thread(int irq, void *data);
 irqreturn_t ring_msix(int irq, void *data);
 int nhi_probe(struct tb_nhi *nhi);
 void nhi_shutdown(struct tb_nhi *nhi);
diff --git a/drivers/thunderbolt/pci.c b/drivers/thunderbolt/pci.c
index 9fe2ef43d8ac8ac867c6e37d7a77518ad2221ed9..6388f77c67ac6d51831667abbffcfb8f52881af6 100644
--- a/drivers/thunderbolt/pci.c
+++ b/drivers/thunderbolt/pci.c
@@ -206,14 +206,13 @@ static int nhi_pci_init_msi(struct tb_nhi *nhi)
 		if (nvec < 0)
 			return nvec;
 
-		INIT_WORK(&nhi->interrupt_work, nhi_interrupt_work);
-
 		irq = pci_irq_vector(pdev, 0);
 		if (irq < 0)
 			return irq;
 
-		res = devm_request_irq(&pdev->dev, irq, nhi_msi,
-				       IRQF_NO_SUSPEND, "thunderbolt", nhi);
+		res = devm_request_threaded_irq(&pdev->dev, irq, nhi_msi,
+						nhi_msi_thread,
+						IRQF_NO_SUSPEND, "thunderbolt", nhi);
 		if (res)
 			return res;
 	}
@@ -311,14 +310,8 @@ static void nhi_pci_release_irq(struct tb_nhi *nhi)
 	struct tb_nhi_pci *nhi_pci = nhi_to_pci(nhi);
 	struct pci_dev *pdev = to_pci_dev(nhi->dev);
 
-	/*
-	 * We have to release the irq before calling flush_work. Otherwise an
-	 * already executing IRQ handler could call schedule_work again.
-	 */
-	if (!pdev->msix_enabled) {
+	if (!pdev->msix_enabled)
 		devm_free_irq(nhi->dev, pdev->irq, nhi);
-		flush_work(&nhi->interrupt_work);
-	}
 	ida_destroy(&nhi_pci->msix_ida);
 }
 
diff --git a/include/linux/thunderbolt.h b/include/linux/thunderbolt.h
index 57502da290805ed6ba627578da060afe290d4137..4faec9246d175d08063b7881ed1d379b9a7bdafd 100644
--- a/include/linux/thunderbolt.h
+++ b/include/linux/thunderbolt.h
@@ -501,7 +501,8 @@ void tb_service_properties_changed(struct tb_service *svc);
 /**
  * struct tb_nhi - thunderbolt native host interface
  * @lock: Must be held during ring creation/destruction. Is acquired by
- *	  interrupt_work when dispatching interrupts to individual rings.
+ *	  the interrupt thread when dispatching interrupts to individual
+ *	  rings.
  * @dev: Device associated with this NHI instance
  * @ops: NHI specific optional ops
  * @iobase: MMIO space of the NHI
@@ -511,8 +512,6 @@ void tb_service_properties_changed(struct tb_service *svc);
  * @going_away: The host controller device is about to disappear so when
  *		this flag is set, avoid touching the hardware anymore.
  * @iommu_dma_protection: An IOMMU will isolate external-facing ports.
- * @interrupt_work: Work scheduled to handle ring interrupt when no
- *		    MSI-X is used.
  * @hop_count: Number of rings (end point hops) supported by NHI.
  * @quirks: NHI specific quirks if any
  * @domain_released: Completed when domain has been fully released
@@ -532,7 +531,6 @@ struct tb_nhi {
 	u32 *interrupt_mask;
 	bool going_away;
 	bool iommu_dma_protection;
-	struct work_struct interrupt_work;
 	u32 hop_count;
 	unsigned long quirks;
 	struct completion domain_released;
@@ -639,11 +637,13 @@ enum ring_desc_flags {
  * @flags: Flags for the frame (see &enum ring_desc_flags)
  * @eof: End of frame protocol defined field
  * @sof: Start of frame protocol defined field
+ * @ring: Ring the frame was completed on
  */
 struct ring_frame {
 	dma_addr_t buffer_phy;
 	ring_cb callback;
 	struct list_head list;
+	struct tb_ring *ring;
 	u32 size:12;
 	u32 flags:12;
 	u32 eof:4;

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
