Return-Path: <SRS0=scWi=HS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C68C433DB
	for <linux-phy@archiver.kernel.org>; Tue, 16 Feb 2021 04:40:06 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0F41164DC3
	for <linux-phy@archiver.kernel.org>; Tue, 16 Feb 2021 04:40:05 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0F41164DC3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NSoJlDZw3O1v20VUuoWuheW93zDaGu4qNQ2bCCBn5V0=; b=vym9oN6rFOheJsYHtv4dofmz5H
	8F+EeGZOfrHH20M1GCO8qlg62v0IqaMhzwQSFC43PJpLpBW/8/AyZxl6x2UwjlhHnQvM5LLupmCaT
	xAa0RLQpiZRY9sh0/vByofHmE3BY3xAIoVG4LND4HbXhPrYOHtt4DBxhI3LklgiR76G9p83PiPktJ
	Fy9YBiZlSJK4KcQhAfAEVVKgBOi3yddJSpG8741wJpgRZ38NcKPThx2qk19+FPkdiO0npNFDoXOmK
	AaeGCbN3xD8v0Bozfmy47oL3AmviOKrffE1JP++/+hNR0Ds6CrujdiUOZO8yY/x7OlXluCkJRLHWp
	EsjZ25vA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lBs9c-000391-Mb; Tue, 16 Feb 2021 04:40:04 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBlNE-0002cO-KP
 for linux-phy@lists.infradead.org; Mon, 15 Feb 2021 21:25:41 +0000
Received: by mail-qt1-x834.google.com with SMTP id e15so5773413qte.9
 for <linux-phy@lists.infradead.org>; Mon, 15 Feb 2021 13:25:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linuxfoundation.org; s=google;
 h=date:from:to:subject:message-id:mime-version:content-disposition;
 bh=+r0YNA3kDkMkPPkmRiEPv+XCfKlQ5U0kh/67l4DDOnE=;
 b=MEUtW3qgjmua61qcwjUyfTrw29ADbxZcVNxn0B5ctVQz9X1M5QvlB6ee42myDcIHZD
 HNRey64/2fYmOArfcWM30ymmueuNRyeL4+xQ+hnvotQ39xarxMrjmUC/2GkLohSCTDJC
 wILUscT9FRcPaH1WGfizHvA37DfC7EvcBZWBY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition;
 bh=+r0YNA3kDkMkPPkmRiEPv+XCfKlQ5U0kh/67l4DDOnE=;
 b=i2os6E+wjh0LRASzu7i1vGztkOwGe9CWakIn1tyvkhT4+1LaVODmV09+0BitoSlhTI
 7n5u1tSzo+0fz+qzdLQ/p6pjlnJppCyiQgT406M9yWs390ako4rh5Y6jrn/NcErJNPnM
 3GbKgi4cULU97pdMRhkh4jmD+WHZsR+icHTaGWudlk/o3AcbLblIq2RfTb4rNqmwwmI0
 eaitMNb/1hR0mcbrLCTAwh5CuJjenW3AbPinVWJzymJVGcbRXjbnxwHWJgXBwDcbAaHn
 q448ujge18f5ZVhnOqAiJ9k/a/ZUYW4lyQjBMqDEygh7W9HGowBDvhHDaxucsjX+Xhw4
 xpZQ==
X-Gm-Message-State: AOAM533ENRelHTsspnA9dZ2/MnjWoM0ktu8MzU+/Yd6Bvtnjdmvr487Z
 3S/ORAl/Nr5hoTcZrVyOfX9MHz7Vb29jhA==
X-Google-Smtp-Source: ABdhPJw1E1ItoGy/KypSaIMA0qgQyr3mMvjWQDeUt0YXK5NmXnc7i5ddLiKUjZL2MuQ6IzGuLwwzNg==
X-Received: by 2002:ac8:72c6:: with SMTP id o6mr15931335qtp.259.1613424337005; 
 Mon, 15 Feb 2021 13:25:37 -0800 (PST)
Received: from chatter.i7.local
 (bras-base-mtrlpq5031w-grc-32-216-209-220-18.dsl.bell.ca. [216.209.220.18])
 by smtp.gmail.com with ESMTPSA id h5sm11909508qti.22.2021.02.15.13.25.36
 for <linux-phy@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Feb 2021 13:25:36 -0800 (PST)
Date: Mon, 15 Feb 2021 16:25:35 -0500
From: Konstantin Ryabitsev <konstantin@linuxfoundation.org>
To: linux-phy@lists.infradead.org
Subject: (ignore) creating initial archive entry
Message-ID: <20210215212535.y4x6b2d7sbd7rali@chatter.i7.local>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210215_162540_785412_10B6E053 
X-CRM114-Status: UNSURE (   5.54  )
X-CRM114-Notice: Please train this message.
X-Mailman-Approved-At: Mon, 15 Feb 2021 23:40:03 -0500
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
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

Hello:

Please ignore this test message -- it is used to create the initial
lore.kernel.org archival entry in order to enable patchwork integration.

-K

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
