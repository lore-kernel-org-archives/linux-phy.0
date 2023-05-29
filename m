Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 638B7C77B7A
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 18:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lXD8rYleWMumi1+cZSwuKSSG6+Eb7KkS+TONEdNUd+o=; b=111L3gtZvJlShp
	oywFzrceiD0hHR5KAtSi8ERlempPbDJTr/CKqYQSd/IaESvmS/KSG4VoivG5RxdjLqNiO0ohHjTS8
	pjuaF/VBVP752EaFp53ctyGdnO0pc3NXWxFEZ35up0WqEK0AQvT4aFQjFwHrTRRtG1PLxCr7Rdr5j
	cyx35CaJASa/Y7Wm54xddgdrnBgok4698bwpI8kfyo8MBJZ1WMc8d53VQdRWNKRwGYorsc1FGTXXU
	dq9pjdNFidaxGKeLvYqHDbv6q8Ge2bGViY0SY1nlJFNkMaUbtxu2ZhOK8JJRwctnWt8I77NzncuhA
	qyagiBeydT0YTKxprigw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i4i-00BSbZ-02;
	Mon, 29 May 2023 18:58:36 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3i4e-00BSan-34
	for linux-phy@lists.infradead.org;
	Mon, 29 May 2023 18:58:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1685386710;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=T5pM1q03ybW1DThCl29sj5y8bq+37R0IpZbMzKJXM7A=;
	b=LANakguMSd2m1I1sZocjDROXUUmpMgRoWAWkWqzeobATFxq7YP0vj4pLd2N8DsqK1KKrLS
	dwb9c7p7pcttwIF6y6anBaaOicH3Y1SLaVcg4IEzzVObil4Vu3PWBJSQkkK2O5lSrHr7NR
	0Clokpt21oSSnyyMQHGOovtY2RRHWpE=
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com
 [209.85.219.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-671-KMy6loGlPV65BajGhsDwqg-1; Mon, 29 May 2023 14:58:29 -0400
X-MC-Unique: KMy6loGlPV65BajGhsDwqg-1
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6261e50ee78so21678436d6.3
        for <linux-phy@lists.infradead.org>; Mon, 29 May 2023 11:58:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685386708; x=1687978708;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T5pM1q03ybW1DThCl29sj5y8bq+37R0IpZbMzKJXM7A=;
        b=RFq7rw6AbLrt78Qx/77R78AcS1OroSaiGlJaNaics93Db/GzjLLTppERLDycX2oCi5
         7vUBW+BETR7vfefDD0Vh96YkwlYvOqCmeyXyIwO3nJfkwEU4PE6mAzR9j6W7t4Zx924H
         OIwy7ktlrf09C77sDpJdpLLTd9LSt3yzZETxdOYqb8z3wFwNvtynOe/kXEMcinC833Eh
         tfc4zV3YQeLJOS45LCkMsHmAQKYzM12SGcP8EbMil8Fi0bXBRkU63fnF+SHY3SR3IQ8Z
         /boOn9gkeJN1Dm09ie7YWqqK97GoaznHWm7zxd+JZC7XZzapzBISSTkUdf1ItsPXtB2k
         nBBg==
X-Gm-Message-State: AC+VfDyG5VZC1XDIcOH8kEfke2wnLZk6uz8lL58+XQ/0Qa/SB/q1hNPY
	EiRybS8C8aKnJU0zxr+dFLGYBBnbEsw5qgvKSg33Cz0GKP6LNMhBxu9lRMBAyiR3WIUmtX66tjp
	tCAKx8Czk07QYRe8Zl1mhuARw2g==
X-Received: by 2002:a05:6214:2aa3:b0:625:aa49:9ab3 with SMTP id js3-20020a0562142aa300b00625aa499ab3mr10838209qvb.55.1685386708573;
        Mon, 29 May 2023 11:58:28 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5HhoMT1jb15CvnsLLQDIP6J8Rw1/u7GLMvmAoOcUt4/KfzRQN3RGUi8hfhItE6lMDhZy+/Qw==
X-Received: by 2002:a05:6214:2aa3:b0:625:aa49:9ab3 with SMTP id js3-20020a0562142aa300b00625aa499ab3mr10838202qvb.55.1685386708395;
        Mon, 29 May 2023 11:58:28 -0700 (PDT)
Received: from fedora.redhat.com ([107.171.218.122])
        by smtp.gmail.com with ESMTPSA id ez3-20020ad45903000000b0061a0f7fb340sm3957382qvb.6.2023.05.29.11.58.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 May 2023 11:58:27 -0700 (PDT)
From: Adrien Thierry <athierry@redhat.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>
Cc: Adrien Thierry <athierry@redhat.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: [PATCH RFC 0/2] Clock fixes for qcom-snps-femto-v2 PHY driver
Date: Mon, 29 May 2023 14:56:35 -0400
Message-Id: <20230529185638.32376-1-athierry@redhat.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_115833_216441_DF0DBB56 
X-CRM114-Status: UNSURE (   6.15  )
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

This series attempts to fix a few weird clock usages in the
qcom-snps-femto-v2 PHY driver:
- ref_clk is never properly enabled
- cfg_ahb_clk is never assigned

Adrien Thierry (2):
  phy: qcom-snps-femto-v2: properly enable ref clock
  phy: qcom-snps-femto-v2: Remove AHB2PHY interface clock

 drivers/phy/qualcomm/phy-qcom-snps-femto-v2.c | 22 +++++++++----------
 1 file changed, 10 insertions(+), 12 deletions(-)

-- 
2.40.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
