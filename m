Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B584DFCC076
	for <linux-phy@archiver.kernel.org>; Fri,  6 Mar 2026 22:25:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0CU7YWhN+lql10UzNIg1o/lFMMXpPMjAYCBCDLwot2Y=; b=YGL7qM52nNbU/j
	KPfRHk6WbfWDpk7TQ7SfJt1T/OnBKxUKKyKTHk2YsVNtrPyUSv0Pr6gqKNYHPlrycM8rBXhpONMzk
	6i4YeIfJSCvCT63Z2lnjsnbdfBtQDswDrKfMXGfQyRku6QSno2Rv7ZMz0bxReum8SAA5t5HjQ+uMs
	pDEqNQFBaSeB47od+H/OBSf8RIGXpPAc/5Crcs0hxGoxwNZ4C3utrVXpbII4rGo0tzjXIQuZKTV2U
	rMLqreXYGNWSDWCj1jJhuJ9Cbe/vHmRIy4+tTPRv7AYU6friaI5T0Tnklmp9eeXaxUAOTmlAAviTT
	QYn9Gkq1oPEnMUnL+eZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vydbj-00000004aQE-163O;
	Fri, 06 Mar 2026 22:25:19 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vydbg-00000004aOd-0QuS
	for linux-phy@lists.infradead.org;
	Fri, 06 Mar 2026 22:25:17 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-354a18c48b5so8480110a91.1
        for <linux-phy@lists.infradead.org>; Fri, 06 Mar 2026 14:25:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772835915; x=1773440715; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=70n5+CscedgHuQY8j6Ny+fc74LTriuFCTgPmi/5/RQ0=;
        b=Vj6/4q+4ZtUVsD5cp+0d0wYaU6Pkt53iK4DYUEQtiuTew7g+KegAzsabMh7bnIMflg
         8lRLIXtclzaXc3vXtUUKGyOrX+fSmcUJohKbgmlku2sf52kUw/HfRVFk9sWKQv/rSECr
         FB+DrUIRPXVGRD5uiAGvdeeUZtF3LJajv1Hi7nXxmf7aEWa1duGbuKgLJ7Hh/cJbsMuN
         WSm5m4YOja4DrqwdaqUlQdMUlveR0VWtxMZmH5JOMoijjaDQvzC6wUjEpkkvQzxt+UJT
         7JdIrGxRGDPdcU/krkYS+/xrirVbSXfLYyhDHR9wn/dlslV2dsMGU7Y3mg+eA/UEiM+e
         iVJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772835915; x=1773440715;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=70n5+CscedgHuQY8j6Ny+fc74LTriuFCTgPmi/5/RQ0=;
        b=m+FOS9+tDUDa52lNHJmVeEv/o8j4g/5QtACGKChlBKCl+aF+5WRTBqpYrQRi9IXZt0
         e8GOPpb0BfM6AnPA6w/rn3sg/IoMpAcrUpkWCM+Kk6bXAJwMYyGMgQZFPAU9YwHu5tcp
         0T+k8aV7AM1arWYEgO1NM6e1zxL/erfLVNQUxh7N9Q+q8PErxlgKBDVE/wUThlSDPkcl
         q7vcHj1xuGxOp2EF9iOYnlC+sKafu3ytHUC8yTABGyAxMjePaJGnlnDtK9p1sUBloOxm
         7SIAEplsVA6humFhkke4fQ8SxiUJAXgm2i+r9uTEQ6ZDBsiIASpCH+wvw56KuY9ng7qk
         zsvw==
X-Gm-Message-State: AOJu0YzOMtZYTgLPr8psnUhfOoMRkMkgjv6AMHM4N9shZaeztoGWLfBT
	2umEiTSyYpt5oFSjuuks2k7sYNPV0N4gf9q/1SYEsCmw6Z8U1h2J7IpPXz/c/LLHb1M=
X-Gm-Gg: ATEYQzxu+tf4dv3bXcE1sfwGJQN0NduBt6NMSj6SdR/ojV4rob4ev6/+3R9En59TYrB
	sxnT2WSadV5tHY0cMIJlvmtuwz5KMcSzCVXT9dkBAFb3ujLmwV4+Mz/zT4ePjYZnYxpmxre/agO
	EJe0Epo1tQEpad2uIvaxHQ0O8LP2/7Nc+MdLSOXRHc13ZlDPc5OyupoxFv9yKp2RI2Ee0C0OJNj
	4CGz1s0eDrsQ5YHCNidAXxC6sXJuhYP9eZ790PrSClRQ7hXqam0u1QX0e8DlBkIE69Rh3cFiel7
	Hf6PqnejmGIjM5FV430jSYvLZ9xQuPoaglIqLGb22hwiKzNmGgwX6ALYRKH8HImaSABuTjjI3Y5
	KaweS5M5sowmY71WnSbvErcWUAIooDEq41yMvmNRMCHDT88oXrFUAZcsJ+nmfKbAm0zvNSHfGSi
	zrWO/Vgh3DdVZTZONIHC6G+DjYVO+lxZgOLH+RCGuZ6i0Vqwdvn9VRacQ=
X-Received: by 2002:a17:902:f541:b0:2aa:d65f:47a2 with SMTP id d9443c01a7336-2ae824671c6mr37988545ad.41.1772835914901;
        Fri, 06 Mar 2026 14:25:14 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83e7c58asm32516605ad.25.2026.03.06.14.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 14:25:14 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: linux-phy@lists.infradead.org
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Patrice Chotard <patrice.chotard@foss.st.com>,
	Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	linux-kernel@vger.kernel.org (open list),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/STI ARCHITECTURE),
	linux-hardening@vger.kernel.org (open list:KERNEL HARDENING (not covered by other areas):Keyword:\b__counted_by(_le|_be)?\b)
Subject: [PATCHv2 0/2] phy: miphy28lp: build and simplify allocation
Date: Fri,  6 Mar 2026 14:24:55 -0800
Message-ID: <20260306222457.8400-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_142516_140013_9BEF099F 
X-CRM114-Status: UNSURE (   6.05  )
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

First patch allows compilation on at least x86.

Second uses a flexible array member to simplify allocation.

v2: add first patch and fix second.

Rosen Penev (2):
  phy: miphy28lp: add COMPILE_TEST
  phy: miphy28lp: kzalloc + kcalloc to single kzalloc

 drivers/phy/st/Kconfig         |  2 +-
 drivers/phy/st/phy-miphy28lp.c | 12 +++++-------
 2 files changed, 6 insertions(+), 8 deletions(-)

--
2.53.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
