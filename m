Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 555A4606A32A
	for <linux-phy@archiver.kernel.org>; Tue, 24 Nov 2026 20:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=GNfeRa54;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=QJiHHMlD;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=XR6NfKXS
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=TuslBCwFoTEYziDgJd6LFh0RvQgNICBsIyunZb7Xp8M=; b=GNfeRa54TAKYgtQ8Q+SAtkVt7w
	fCBLaDwDWZo8DIZVsq1xHLSdd9MPTpjoZr5rwac/zaKo+3QPEI3EB7KxewoTNkrhPD3RgcV2aTVnz
	M1rb6NrhAgRMq3GpCqKHVRNs7lIxos49cx/ShuApjwuOJNPoMMzVTSTq+0azv7hcU7L0brFcB9FKI
	FiLAkz3iewitV23ip979m70b7fg/t/R9zqGLKsrFyB7V9f5lnQ2TUNVbzJpDOrFBNImTHxf9nEP8H
	y0aN2l8e+oHG0HGaScZVTtrKxWZdcqU0VIkk7PPTECKhy8+pimyK1+tjaJfiq31tk192LUtySCqXN
	GkZmU6KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiL-00000007h4B-0Hg6;
	Tue, 24 Nov 2026 20:02:05 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVwiH-00000007h2G-2j8R
	for linux-phy@lists.infradead.org;
	Tue, 24 Nov 2026 20:02:03 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6AOIXSJW119675
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	szDrJxQAF0h7/bry0F1ZQYYjoU60aFZwm9Ntl7V970Q=; b=QJiHHMlDzapIWdkw
	3kJBFanukFtywHVqWJkFZ8pMzcNzIiD8OlVllzDuXcCLoVGTTO+vqk/dJn8Nz4Ca
	lAUrqD988I2rWLzgC0fQwmIL3CtgbUDBqE7bjsADOMw+9ufRud2+dIvtdFfFaUe/
	5fUM3Na69D53s57yqMSK9PabCUey/cxL1HRwXsRyBhkUtM90A5v2wuMMFAQRO0EH
	ofPAj1x7CKqwoFAfQhsjjQLXudHvuP5L8QBXDLzq1ixCtkUZNSnJ9VCwiUIESc+O
	a/hj3/hcxFh4+3kyFhTP1dS/aHlc7oN8fkGMAK+WHGhxHLmfXezpDAb9boq4Ac8x
	5eTELw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4j5effrv3t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 20:02:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-94964828890so60175385a.3
        for <linux-phy@lists.infradead.org>; Tue, 24 Nov 2026 12:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1795550520; x=1796155320; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=szDrJxQAF0h7/bry0F1ZQYYjoU60aFZwm9Ntl7V970Q=;
        b=XR6NfKXSD2lhpmzCRsLutrC4Y9Is5HEiSC6awvQW/Sodan9aeIC0tNkLa2qzTnmaGM
         jaHWvFVLvFtjwOWrg5+jbt1TZ74Z24tXNruseeGwp2RMohnGi6mIlu3RGQouCZ+p/CVm
         h3SEJjMwd7A7Umg1LMZ71Ct3MtarkRbovdzDsqBfOnSBxBusa43igQzx+icGXd8Ouw2t
         inFJUd+kABc0rZcjII+nweREHk+vkGvVAdxuflUEEdgjifOjrUSTpmikcFJiuqUDp21r
         LHTi+X1ft/qT/oRQ4A+2Y30KHffpISqnvAS3MbUKBy862cuTE4YDVW13NPKtbZJwS7hx
         rOLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795550520; x=1796155320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=szDrJxQAF0h7/bry0F1ZQYYjoU60aFZwm9Ntl7V970Q=;
        b=s2vZFu4u2oi1SGnMA8efpFhvATXNgFJZ3xiRjqHQiDUR4htxTkIiJVxXYsyrIQeZwy
         i26GTny1Z46qX3/BdUJ2rHTbwu2CqIKmH0fcRd4ifCGfBNAFtmc7+Qr/M1W1hYCERI9A
         xxbFgMez871FT4h4qQlqozuVOQv/W+xtvzm4oasy5eABAscgyKvVlMGyQgx38ED16z4+
         UCDqR1MPMiY63sMYj+XYJRWnPd26cjzoYEtanuJub7TonSz5ixe4XsVlTHm4+lfbkr7K
         ejoouW+IY3EF/9VJXomeAVIZYUBrvdxoDYafgeOfo9ZAZMvBlG8e4UWZAcJZYiBubfTR
         JbPg==
X-Forwarded-Encrypted: i=1; AL+hErHN2u3ZDwF+jjbBBkXhdtrMg1nf5vM0bV9HgAqjZvWbMzTVsFPCQiWNFd6HEwSSOWMthOJzj1kjT7M=@lists.infradead.org
X-Gm-Message-State: APuU4Z9KRq5YCQETMk3Yv72ltck2Sr6bnTsPqpFGtKo9OonocpHaubHJ
	hMETmyPv8bBGCJQh7WkjGxrDNORiaaGm39d3joKUbvv0KFPq8GtcjyDwxY+JF5/tq8qLoegNL8A
	xp/rFmP19KRQKsups0VlI8mazYb8yzKYtvz3cWW4Q1FZh7ISAC3NlO8PakUjjVLamkOOM
X-Gm-Gg: AZFdTZc6tu+8dV0fY7vshQsprLW5pB+m9y8JXrhUgu7BN/d5qbK0mKd51kmRkUgMUFY
	rdNJ1FJBezLIlmIWU/Wbs78ErWil7Ocpj3lrnYLgo3Z7eCf1LoWKjjjl4T0S73sY+IZuOfKtMzr
	aKiXGduuqLfOtDSGbToSZ5o2g5cMgmnGZft+fgyCpEe1JpZGQSaACGMT5tBUAKOWyg1AqJ/mUGv
	RGMsMheScN3MGdXjZPy8dQReZLXzA/JKL7tbvltdC6abcBONJ8kEbOpROxONZ3clMJMTE3m5eF8
	E9UudvHncnY52YYPHtBj/raXkXvansvaexYA0G9XQeT4foOH16OgWH4lpmtW/GhyRzajpgDzAL2
	4ADMCfgHhH+t2G4sWb4SDPyaYzPFIkUC6KZl0OF/Tf86ltoE12Flo9kKJYBif3KVjguByP54WaW
	tjFag5u8g=
X-Received: by 2002:a05:620a:8cd:b0:949:821d:98 with SMTP id af79cd13be357-949baa042abmr2854459985a.4.1795550519885;
        Tue, 24 Nov 2026 12:01:59 -0800 (PST)
X-Received: by 2002:a05:620a:8cd:b0:949:821d:98 with SMTP id af79cd13be357-949baa042abmr2854455985a.4.1795550519390;
        Tue, 24 Nov 2026 12:01:59 -0800 (PST)
Received: from KDYBCIO.eu.qualcomm.com ([2a02:2a40:15fe:b200:7192:a019:58a4:eb4f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb85399e2esm517678195e9.7.2026.11.24.12.01.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Nov 2026 12:01:57 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Date: Tue, 24 Nov 2026 21:01:35 +0100
Subject: [PATCH RFC DNM 06/15] thunderbolt: nhi: Clear ring interrupts when
 not using MSI-X
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261124-topic-next-20261116-fsm-mvp-v1-6-a9b45c69cd38@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1795550497; l=1901;
 i=konrad.dybcio@oss.qualcomm.com; s=20260604; h=from:subject:message-id;
 bh=lQhH7OQzf9VgDsH8cpaKlHzic9O9I/E7X1/iq/ZRsf8=;
 b=itTnkK6xsIu1DWfmtZAk3+81tKnNczIoJxWhHQHf6wPBNR28LsV83Y7ssCJJRB4lEvbsjUlxZ
 PRvOcCK/TYtBA4xVMS7KVxT/taKfbc2x3oexd1gRRm50KBZuP2nBW3X
X-Developer-Key: i=konrad.dybcio@oss.qualcomm.com; a=ed25519;
 pk=SGRRMmlLTuP/lGKdQ0f4KPvxn8VVsXtXaTpdGc8i82c=
X-Authority-Analysis: v=2.4 cv=eo5KXYpX c=1 sm=1 tr=0 ts=6b05ed38 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=zJRp6_cAMcgA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22 a=EUspDBNiAAAA:8
 a=3EEjJ5KKZ7fs_CpJeu0A:9 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfXxXo942rgvIBb
 jB02SyKaOIu3CbmHU4k3ym5SAaarWYZcshtJewKi+NbKwPmUEO78PahfJZSOjqct8ImOZ8kbZvI
 0t8GCJBKYXbEtU4oxLWVgh4kRRqbGycBYA2ZEahbXS3BmLe2HiRttgtaSfS3+mKa3loufXc01AT
 UQRhAKY35/xwondalhGvweGiQVvkrHMewQvn8aqLhrmPxWZxfNP0j8YzxUYo/tiKxLAuO2h4qkg
 6GYUqcusDMcMHxG23ck4vTF6Jtgi/JoocoQBJGUpedHP0hk1z9tpJ3fkGUE9g9xRtXA11AGNtUG
 4ZHpdwi4xROP6vD4d6icIGckJrE/6c99NHjgVPGMu1lFdDGaV02/tc4/IQ/FD7k69llo9s6XzZH
 xjEhVWtlASz970ckLEv6+4pRT8eOv3DiIqoMu3OuYxLxCFTgUDmy4ORYHQ46RlhSozo8RYH+2js
 fJUExF7iBNETfgt9ziA==
X-Proofpoint-GUID: MxRrAI-YfXK2mJkXK72Mourmi061vjdW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMTI0MDA3OCBTYWx0ZWRfX53egq3B9YkP1
 rmcCUNh/+BPSlsr3SdKt67DJlV0aehe2OcPfMYyHnly0yxHcLzJLHqqfDoMMhG9anrZJ5/NbBM+
 gpFIqrKrppRanAqPQNtsG9oSiR6fw7s=
X-Proofpoint-ORIG-GUID: MxRrAI-YfXK2mJkXK72Mourmi061vjdW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-11-24_05,2026-11-23_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0
 phishscore=0 impostorscore=0 suspectscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2611040001 definitions=main-2611240078
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_120201_812303_9FADB41F 
X-CRM114-Status: GOOD (  16.36  )
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

Commit 468c49f44759 ("thunderbolt: Disable interrupt auto clear for
rings") made the hardware stop clearing the ring interrupt status on
read for all routers except Intel ones, and added an explicit write to
REG_RING_INT_CLEAR to the MSI-X handler. The single-interrupt handler
was not updated though, so for such routers the status bits are never
cleared and the interrupt keeps firing.

Write back the bits that were found set in each notify register to
REG_RING_INT_CLEAR, before handling the rings that they belong to.

Fixes: 468c49f44759 ("thunderbolt: Disable interrupt auto clear for rings")
Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
---
 drivers/thunderbolt/nhi.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/thunderbolt/nhi.c b/drivers/thunderbolt/nhi.c
index f54ab2189cf424d04a9ec48576efe78283a83138..e48521482c021c7f5f73349ce16519d6088d3250 100644
--- a/drivers/thunderbolt/nhi.c
+++ b/drivers/thunderbolt/nhi.c
@@ -1036,13 +1036,20 @@ void nhi_interrupt_work(struct work_struct *work)
 	/*
 	 * Starting at REG_RING_NOTIFY_BASE there are three status bitfields
 	 * (TX, RX, RX overflow). We iterate over the bits and read a new
-	 * dwords as required. The registers are cleared on read.
+	 * dwords as required. The registers are cleared on read, unless
+	 * auto-clear is disabled, in which case the bits that were set have
+	 * to be written back to REG_RING_INT_CLEAR.
 	 */
 	for (bit = 0; bit < 3 * nhi->hop_count; bit++) {
-		if (bit % 32 == 0)
+		if (bit % 32 == 0) {
 			value = ioread32(nhi->iobase
 					 + REG_RING_NOTIFY_BASE
 					 + 4 * (bit / 32));
+			if (!(nhi->quirks & QUIRK_AUTO_CLEAR_INT))
+				iowrite32(value, nhi->iobase
+					  + REG_RING_INT_CLEAR
+					  + 4 * (bit / 32));
+		}
 		if (++hop == nhi->hop_count) {
 			hop = 0;
 			type++;

-- 
2.55.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
