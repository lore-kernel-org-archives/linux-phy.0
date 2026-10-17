Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8878CCCF2C4
	for <linux-phy@archiver.kernel.org>; Sat, 17 Oct 2026 17:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=66/f3JmyWavi+D2tcNQKvs41PVnktim5hREpd+wNCFk=; b=hgxohJNALBJqQq
	AzsFoYhxKw4kUIuXAaRz/fwcYXXncPDzygcqfpymubPhXITYPQrzzJ5CsS6R/Kf+Yx0iFbjum8x1q
	5nBAZeC02kelPxORGUg8TOHES92W6cYghfR8apzXwj0cK/kRqOnIm0HdahF5girzFrJas6o4RaMSf
	nCG47Xq+9b7498G+qaXbErnNxlDAUXjc4f9jRs0RFz8RXH8kXvGpYK+4z14b7ShRDfdbe3LHYjrmm
	yMJ66SvJLozeWU6YLCUv/8/ppK4/5yejP5Y1i3VrVqnLnK8Z0+nq/XLaMHWL4k5iLzdYK+cAc7NOU
	OJD72RjItqDrnDqHcQAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yL-00000004yvO-0pKY;
	Sat, 17 Oct 2026 17:13:29 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xI7yJ-00000004yuq-0SAw
	for linux-phy@lists.infradead.org;
	Sat, 17 Oct 2026 17:13:28 +0000
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69HH0XUu2639117
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=eED3OOUN/d2HGrSYhMIXf8
	FiWKrYIZfXpQW5QeQiOIw=; b=iNuG6zQP/EBgQeMt1n3z+TTY6EZu5tUBEpF7An
	nBwkuGzZfALv2mIchy+PQww6aq4MKhc2XuGnxHBA0XBdI7fNbqn8SWqmvlz0aId4
	bm1Z0IrEhDq2oNafoJaVpxxODvouIo7tAJuqPACawFmqLlMP9P+ABr0x0tMuPYMg
	ng9rZn2dscVYdQyBUxUfRwirL6kUcbu6trwOen/7k1WOk12alunBAQgMM1F2ljRf
	noejV5db9FCwBxuw5cG+jDnpgtz5fLIYBytNDkPg1CdJiv9btVbI8C1E8SkxhbGj
	/vvHOy04VAZQ5VB5UAAreBuUTShsllVwDniFV1hxrf2pErjg==
Received: from mail-dy1-f199.google.com (mail-dy1-f199.google.com [74.125.82.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hbyys1j8c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 17:13:25 +0000 (GMT)
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-3548cdfd2fbso1201581eec.1
        for <linux-phy@lists.infradead.org>; Sat, 17 Oct 2026 10:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792257205; x=1792862005; darn=lists.infradead.org;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=eED3OOUN/d2HGrSYhMIXf8FiWKrYIZfXpQW5QeQiOIw=;
        b=d9+WQVBRz+LFC/y9eR1v9VPyW4MBzj/1o6MbX/H1BQ+EBNb7h+GXBKiRCLXYj5M60q
         DWsYNiTAs4DXSrL1XAc6wm9dDcTRZWIrrfwKAqDlL5WNVY8JGsGpvjnau2845aV/AHBM
         qp0UWFDP1uFySnaw25aW4e/6v+/nOSNW6KMEAIPk2gWR6JmoccjpwO3sIX14Z+mn+Jdv
         YEa5qAxuea1s2eXAHLNCkc6q/Nq62FCHnxN8FVmLRiyj1iuE7WNbGq9NLEnAP7q8ko+3
         MYetOn4zmUa7p1cjEcV7RWg4O4EswB26ZVyOZsjWRG6wpCHuELOJ5sug4M4lsmrnygCX
         0Fuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792257205; x=1792862005;
        h=cc:to:content-transfer-encoding:content-type:mime-version
         :message-id:date:subject:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=eED3OOUN/d2HGrSYhMIXf8FiWKrYIZfXpQW5QeQiOIw=;
        b=2ahwAPXJOoznsdaGbDSkJ630vi/dSyQq/sZWocIDTsMpCJZo+12ZGDp2OqhTOzy2lF
         FChsNOrOGHtFc7XshmPNpWk5MUoZnQkLe06n9JDYtsmQHr4RUUE7F0mw5mbBjSKEHVJo
         RcvJ4HpQ5PdNHMJo/lItvFHSxii7pwti/INMHfCXielKKTiQZp3pWPzAKRBEd/urdySY
         Na9h507rtQaKWOsPS70t4q+S5CIXHSz+itYi3F8hnGAa/zwrI7Xg+OENN8Xf5N2uRgks
         R/GssmFFLj7pGyAZ4V3k8/mt2lu/Zk8jvS34y/Z5VKlBFQsR65tyPz4DXpkIiAesRj3X
         y8Cw==
X-Forwarded-Encrypted: i=1; AKwUvBypD1iCJY8N0PPHlKzojPaElKq5q+s3np3NmekO+73z0tTesmJAuzBN6Z0AVX7T+qMtnDCK3FMClMc=@lists.infradead.org
X-Gm-Message-State: AFq9FYI3tvO0p6xTT9dujdE7l02hWNsdnVTkmqbExwV8yLWKqMzYhqPg
	9OeA3I/hKZynxL0YTWMmCOK6CVN49JrSlRf/R6qz5gyiwLad/lGvzYRDA6a2auvjNenjMtkyH99
	ZI9VzNDaAkwvyonWHYDyPGtvHNy0eHw+n/2f+yWa/Rdspd1wCYXOTioplzT3KlZLqnxHDqUvv3Z
	Oz
X-Gm-Gg: AYBFou3BGUQlvqhfnQfFhcb+Hw1erSAae0wEWbBiKnH8WX1epdfFzg4RLl72tGIlGXV
	ENEGh4cUECwQ1pig8zi+h2E/1NNYqAUfHkaI9MnRETO4GZCmlQni7S5oF3DEq85fTyUqFj9WyXK
	kCx3CS/i4COe7lNGVqDAwWal6fMTlkB4PwxBRPpKewwTSW69n/xGpi5K8uRz1CZSz20XIRD3WX/
	zxeTOgv8Ovn287fKQkHYsc60g8fzUvUoZjSu2ktieEL0CJrN2Y3xQ08rfiFeX9+zBX5L2FFo39V
	CkFf0gOpbm5+M2WtuidkCSRQ3Zuzi40ucYsNAU60ELoZTyLOymtDnTV/+xzvd9jW8Kt709TtGY1
	46PfaxWKZDTGFqIQJKAD8Htzi5D8QHw==
X-Received: by 2002:a05:7301:2a9b:b0:360:51af:3146 with SMTP id 5a478bee46e88-361a1c4d654mr4244977eec.14.1792257204505;
        Sat, 17 Oct 2026 10:13:24 -0700 (PDT)
X-Received: by 2002:a05:7301:2a9b:b0:360:51af:3146 with SMTP id 5a478bee46e88-361a1c4d654mr4244932eec.14.1792257203884;
        Sat, 17 Oct 2026 10:13:23 -0700 (PDT)
Received: from hu-nihalkum-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-360813b6e33sm17893966eec.7.2026.10.17.10.13.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2026 10:13:23 -0700 (PDT)
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: [PATCH RFC 0/6] phy/media: Add generic MIPI C-PHY support to CSI-2
 stack
Date: Sat, 17 Oct 2026 22:43:07 +0530
Message-Id: <20261017-cphy_support-v1-0-8b0e1237ce95@oss.qualcomm.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAKSs02oC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzNDA0Nz3eSCjMr44tKCgvyiEl2j5FSTFDNTs1QzY0MloJaCotS0zAqwcdF
 KQW7OSrG1tQDpuFFNYwAAAA==
X-Change-ID: 20261017-cphy_support-2ce4d656e631
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792257198; l=3705;
 i=nihal.gupta@oss.qualcomm.com; s=20260608; h=from:subject:message-id;
 bh=EGlPGF3Pi8rbBLjzAI8E4z/L6eRvj6YXti6ArMjCUkA=;
 b=QKv4CgH03RwSKzq+zy1XFoOOQlaprD/Ug4Hwv/5o9WANFQSfL/q/P0/EhlcgNlUjseGH+P/Sw
 9cRjx7P6TxpC9mz0ul+EMxgC073GRtl+uibup6JovHBZmnL6fujueOu
X-Developer-Key: i=nihal.gupta@oss.qualcomm.com; a=ed25519;
 pk=DIbyFMNwqU/iMvU/0pCQp2wmRVgtHFBT3PcSu+A+Ncw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX9FtH/9WBwv5m
 aNGIStmRTusnmCGpq5grGD2fgb8GAw67c1whez+pMu07yV+INtaqFa6nuZVv6KXniHpeD0KX7g6
 BBIb3rq/Ivn2G9xMp0N06yduEMAtgkjcBvhVERVhfr/KaizxUWZ0fRmsdMuSHCcttfJRgBSDg2X
 31d9E7mx4qKlhpcV4P61fJ8hglohiJFrtG+5Pg81rMOYsfJBC1huBFcHfZQezohMg5CRt+NNFrm
 D+cjm12V3LrLgJ6yIVbtWtHDmTO8vPfW6zMGC9BFQhOAJg0GWNuVS3qOJXhrbtW+STA5xjHG1Dj
 bYY1TS9MTEOKH6GCtHCai+MeYeZUhLI8xsIGeWpUoq/0jK2WMViyPEKtL6onQ7Sle0sI0eDheTV
 ZK8O74cBmhyRDz4M3g8Ql2jXWd6JEjZOfhTycP7r6hQLRPJmA3ad4hpQy2/M6c5EG40xGuMBcMT
 c9KuDwiqDHNBCpP4l+w==
X-Authority-Analysis: v=2.4 cv=W4WtxhWk c=1 sm=1 tr=0 ts=6ad3acb5 cx=c_pps
 a=cFYjgdjTJScbgFmBucgdfQ==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=Um2Pa8k9VHT-vaBCBUpS:22
 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=XJ1KF-jXdhw-DoQ8J3QA:9
 a=QEXdDO2ut3YA:10 a=scEy_gLbYbu1JhEsrz4S:22
X-Proofpoint-ORIG-GUID: r4oWRajF6qM-Hz5v0B4dlD7NTTbXlUQW
X-Proofpoint-GUID: r4oWRajF6qM-Hz5v0B4dlD7NTTbXlUQW
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDE3MDA2OCBTYWx0ZWRfX8Tzb5zET5Zww
 nzsgCoycuuWb3bVYw5Mr90mT1yZSjSxLey2niSyYTivRp49ZCIOGGP9nmi8y5NNjzxNt8IpBE9W
 ZMGqLzSiJXmITT5vXCFwkozoc42/+k0=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-17_05,2026-10-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 malwarescore=0 phishscore=0 adultscore=0
 priorityscore=1501 suspectscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2610080000
 definitions=main-2610170068
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261017_101327_159282_C405189F 
X-CRM114-Status: GOOD (  11.79  )
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

George posted a C-PHY series [1] which we are currently reviewing.
As discussed with Bryan, this series shares our independent
implementation so the approaches can be compared.

Two aspects covered here are not in [1]:

- Settle count calculation derived from sensor-reported T_PREPARE and
  T_PREAMBLE timing via get_mbus_config(). [1] left this as an open
  question.

- Data rate based register sequence selection using effective bit
  rate (link_freq * 32 / 7). [1] noted downstream does this but
  deferred it; this series implements it.

MIPI CSI-2 operates over two physical layer variants. D-PHY uses a
dedicated differential clock lane with up to four data lanes. C-PHY
encodes the clock within the data stream across up to three wire
trios, eliminating the dedicated clock lane.

Patch 1 extends the generic PHY framework with PHY_MODE_MIPI_CPHY
and struct phy_configure_opts_mipi_cphy.

Patch 2 adds t_prepare_ns and t_preamble_ns fields to the CSI-2
media bus configuration and extends CAMSS to forward them to the PHY
provider for settle count calculation. Sensor drivers must implement
get_mbus_config() and return non-zero values in nanoseconds; stream-on
returns -EINVAL otherwise. The strictness is deliberate: C-PHY settle
timing is symbol-rate-range specific and no safe value can be derived
from link frequency alone. A conservative fallback could be added if
reviewers prefer.

Patches 3-6 extend the Qualcomm CSIPHY driver: refactor D-PHY
register storage to accommodate C-PHY, accept C-PHY mode with
multiple data rate table selection, compute settle count, and add
lane power mask support for C-PHY trios.

C-PHY encodes 16 bits per 7 symbols, so the effective bit rate is:

  bit_rate = link_freq * 2 * 16 / 7 = link_freq * 32 / 7

where link_freq is symbol_rate / 2 as reported by the sensor via
get_mbus_config(). The rate-table entry whose bandwidth first meets
or exceeds bit_rate is selected.

The settle count defines how many timer clock cycles the CSIPHY
receiver waits before scanning for C-PHY sync. It is computed from
the sensor's T_PREPARE and T_PREAMBLE timing. The /3 factor reflects
that C-PHY distributes the preamble sequence across three trios:

  settle_cnt = (t_prepare_ns + t_preamble_ns / 3) * timer_clk_rate / 1e9

D-PHY settle count is unchanged from before this series.

[1] https://lore.kernel.org/all/20261016-x1e-cphy-rfc-v3-0-40a346a72153@gmail.com/

Signed-off-by: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
---
Nihal Kumar Gupta (6):
      phy: core: Add MIPI C-PHY configurations
      media: qcom: camss: Add C-PHY timing fields and get config from sensor
      phy: qcom: mipi-csi2: Split D-PHY register settings
      phy: qcom: mipi-csi2: Accept C-PHY mode and add register sequence
      phy: qcom: mipi-csi2: Add C-PHY settle calculation
      phy: qcom: mipi-csi2: Add lane mask calculation for C-PHY

 drivers/media/platform/qcom/camss/camss-csiphy.c   |  90 +++++++++---
 drivers/media/platform/qcom/camss/camss-csiphy.h   |   2 +
 drivers/media/platform/qcom/camss/camss.c          |   8 +-
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-3ph-dphy.c | 159 +++++++++++++++++----
 drivers/phy/qualcomm/phy-qcom-mipi-csi2-core.c     |  51 +++++--
 drivers/phy/qualcomm/phy-qcom-mipi-csi2.h          |  25 +++-
 include/linux/phy/phy.h                            |  47 ++++++
 include/media/v4l2-mediabus.h                      |   2 +
 8 files changed, 315 insertions(+), 69 deletions(-)
---
base-commit: 2efb7a11f1aa4d2dc285fe2680cca22cb9f72f64
change-id: 20261017-cphy_support-2ce4d656e631

Best regards,
-- 
Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
