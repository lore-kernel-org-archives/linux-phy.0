Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A678C0219E
	for <linux-phy@archiver.kernel.org>; Mon, 10 Feb 2025 13:45:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dQewUslNDCApHcP9LTLX/PTYDlPjThcAyV2KwZ3rCUs=; b=yofapmnSLdd6DD
	5Bgj5qAUQlobLzOHeXsVKV7bES+w9lEDQPudlytEWCyiFLpW7rAv3SF2UUOHxJcV6GwTC2FPos4qn
	3GIQEhw0JpGOqaP2zxQZ0ZIF1NZEHdQpkMnFPxWePHNwDnJvOpiCIuoR7/y3XvgeLJVd3ND0TEkvb
	LbebjqUJr7BaMsg3QDNMLqtPapUYu4isfKvevugYPz34TB4vXCe9YmGkZdXSvAzsHGxN1d1ODK0a0
	tIp2DltcHcBwNz7dt+oH9L1emvMdkoJWBX2Qb2MXEm8ue2d9wNoaZMsIPuO5psXrzAg7O1ikJ0ygJ
	8KGlXa1Ss+DKnIJsqIlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thU6C-000000000s8-3Kio;
	Mon, 10 Feb 2025 13:45:20 +0000
Received: from mr85p00im-ztdg06011201.me.com ([17.58.23.181])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thTtu-0000000HYxd-0jGP
	for linux-phy@lists.infradead.org;
	Mon, 10 Feb 2025 13:32:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=icloud.com;
	s=1a1hai; bh=b2KIEz2420Bb2pMgV6oZ8yidp4SHbkJXc5kwpa6Ezmw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:x-icloud-hme;
	b=eFDPGbOHyYlHpd/Z/72XGVGFO0UMKgBrGTQj1C/grnuVt6SKmhCJ5r25wrgp09lIT
	 g0E1ilNKqD/2AtxBgauqmZHe2CI7SWHJrwp0bl3y8reULFSzotVjtL45MoFuZ0Z/lI
	 4GUVfOY9dQm/FuwAxu78OAMo/uC/FRE0wQQq9nYwMw4W1NcZm0xm8PF+YdEYUYFADn
	 6GVqu/yAKkWdVDOnPH4cjjqO5aeQw6QB9LW6QAWsmpoQfxFpgbGIjeu6a8u3QPfVN9
	 1sHOAr5y54SlrFIOeOMPfU3onZdkSBHpf0DEyUxrMD6u0KhWieQlPa3Iokpkuc11FQ
	 zQm3/tWrlMWzw==
Received: from [192.168.1.26] (mr38p00im-dlb-asmtp-mailmevip.me.com [17.57.152.18])
	by mr85p00im-ztdg06011201.me.com (Postfix) with ESMTPSA id EA9CA96009D;
	Mon, 10 Feb 2025 13:32:25 +0000 (UTC)
From: Zijun Hu <zijun_hu@icloud.com>
Subject: [PATCH 0/2] phy: core: Remove 2 APIs
Date: Mon, 10 Feb 2025 21:32:01 +0800
Message-Id: <20250210-remove-apis-v1-0-2aaa866315a7@quicinc.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIANH/qWcC/x3MQQqAIBBA0avIrBN0MIquEi1Kp5pFKgoSiHdPW
 r7F/xUyJaYMi6iQqHDm4Dv0IMDeu79IsusGVDgq1EomekIhuUfO8jBkZmesmTRCL2Kik9//tm6
 tfZenc09dAAAA
X-Change-ID: 20250210-remove-apis-b4e48d4c4712
To: Jonathan Corbet <corbet@lwn.net>, Alex Shi <alexs@kernel.org>, 
 Yanteng Si <si.yanteng@linux.dev>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Zijun Hu <zijun_hu@icloud.com>, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 Zijun Hu <quic_zijuhu@quicinc.com>
X-Mailer: b4 0.14.2
X-Proofpoint-ORIG-GUID: GaWjp9J7Wbid0W8ZYd5iahMhvytg_Wi4
X-Proofpoint-GUID: GaWjp9J7Wbid0W8ZYd5iahMhvytg_Wi4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_07,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 mlxlogscore=579 clxscore=1011
 mlxscore=0 spamscore=0 bulkscore=1 suspectscore=0 adultscore=0
 phishscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2502100113
X-Apple-Remote-Links: v=1;h=KCk=;charset=UTF-8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_053238_232786_1BA492D0 
X-CRM114-Status: UNSURE (   4.57  )
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
