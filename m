Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06FB7C021B2
	for <linux-phy@archiver.kernel.org>; Tue, 25 Feb 2025 13:03:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQewUslNDCApHcP9LTLX/PTYDlPjThcAyV2KwZ3rCUs=; b=lpfNvtHxSC7SVT
	y7s4H4uUXRIGhWZDASAmyxtM7YlJ4Y9MkvJGLr13FCyhbpKuG+rNvZc0jbet9JLq4TYLXzC+E2yOK
	Sio/mrBzlJ3K4V8polEPMIWkkq1DMTNCCmEBmhXuNgMvWLOtkgHeNRjKWnX9NcPq4d69APN8GF+zU
	ECUu7Q+kPH1UZSIwtSLkzLNUYcMkJQd+ajrnHjC1g2vmbvn4sdxqZHtcmxx1iQmeN4O+qvR/56KBc
	AgTR7SgPbjyL5dxFYBDmaOmlDjDf8FH50zcjNreL2zDTKl6TZTklprzjJu4+7hpYmyl59Ik3zJlMi
	9uLMch/lv+S4DTQ1SkDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmubG-0000000HIPO-3GNn;
	Tue, 25 Feb 2025 13:03:50 +0000
Received: from pv50p00im-ztdg10011201.me.com ([17.58.6.39])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmu7e-0000000HDv2-299W
	for linux-phy@lists.infradead.org;
	Tue, 25 Feb 2025 12:33:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=b2KIEz2420Bb2pMgV6oZ8yidp4SHbkJXc5kwpa6Ezmw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:x-icloud-hme;
	b=s7zLi+W5e6GuO2xN4gm26yNFYJzhl8upFxKnD6eKHIf03zgJfuIaJqOqMu6hU7D00
	 aMbPQ8hGa6cIOxWXZ1Jgbl0GtNTPSDbLrk3mUeubUL4w3rnW5mLCRIM374CKVc52ku
	 wkEuuXmZdAM+ItF/mlgZDxDWKB7ePq0y0ulQNa1pK3XiY0v22PyUtlxvU5M/4+NCWq
	 C2udzH6dgZwHB3kIDx6wzNzwDBdQB6CzMlDozxqTaOolbdCEILaurlGiPJVxXGu1BR
	 OkdJjy8KCAr1Xit61DpG7g74Sv0JfaLti+/JdDbOVquFHvWGLDXR6q1FBGOd7Pld2Q
	 Ua/nqjTQjVInQ==
Received: from [192.168.1.26] (pv50p00im-dlb-asmtp-mailmevip.me.com [17.56.9.10])
	by pv50p00im-ztdg10011201.me.com (Postfix) with ESMTPSA id DBA9E6803DD;
	Tue, 25 Feb 2025 12:33:05 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH RESEND 0/2] phy: core: Remove 2 APIs
Date: Tue, 25 Feb 2025 20:32:37 +0800
Message-Id: <20250225-remove-apis-v1-0-e49b4a1941fd@quicinc.com>
MIME-Version: 1.0
To: Jonathan Corbet <corbet@lwn.net>, Alex Shi <alexs@kernel.org>, 
 Yanteng Si <si.yanteng@linux.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: 4yt0iayngGT9xwSqldJKZ_x5gqqXu5m-
X-Proofpoint-GUID: 4yt0iayngGT9xwSqldJKZ_x5gqqXu5m-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-25_04,2025-02-25_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=557 mlxscore=0 bulkscore=0
 adultscore=0 spamscore=0 malwarescore=0 phishscore=0 suspectscore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2308100000 definitions=main-2502250088
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250225_043314_570142_8C9391B6 
X-CRM114-Status: UNSURE (   4.93  )
X-CRM114-Notice: Please train this message.
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

This patch series is to remove the following 2 APIs:

devm_of_phy_provider_unregister()
devm_phy_destroy()

Both APIs have not had callers for more than 10 years.

Signed-off-by: Zijun Hu <quic_zijuhu@quicinc.com>
---
Zijun Hu (2):
      phy: core: Remove API devm_of_phy_provider_unregister()
      phy: core: Remove API devm_phy_destroy()

 Documentation/driver-api/phy/phy.rst               | 11 ++-----
 .../translations/zh_CN/driver-api/phy/phy.rst      | 12 ++------
 drivers/phy/phy-core.c                             | 36 ----------------------
 include/linux/phy/phy.h                            | 11 -------
 4 files changed, 6 insertions(+), 64 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250210-remove-apis-b4e48d4c4712

Best regards,
-- 
Zijun Hu <quic_zijuhu@quicinc.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
