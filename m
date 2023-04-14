Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044B9C77B6F
	for <linux-phy@archiver.kernel.org>; Fri, 14 Apr 2023 09:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Au9elvymGNoevXvC7N8Q7HAH+Iu/aLJNV0CE5zvQPPU=; b=i0O5/xE6HN33Km
	RiTHic4YPEtKq4Hr6NhhXfrKEqh3VNpqpxmKAh4bmjzqbp1iWe6q5I0/pFREeteMkpNL+VWRdvpcn
	LS98J/oBs3B8QGyRDzB03fbKuZJRSvgUX7+YGpbmaz4ZLurW8mcBNdmvj4yw91IOd6Su6OT9tgK+p
	/rTvM60WGsgD9hj559iBUTiLEvCJ5KHvW88/76hK6ieRYPMO9Vz7Hj6gOrgsdohk7rwUVL8cg9mbD
	T6u3U6H4z+MTqCZG10NrNpmkybs4+0/7FTwJwKzdsycQoomEsX7jFT1mZSnoIqfXfepJlaw0odd1C
	m7CY73iRwfF5JBJcuk8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFz1-008uQw-21;
	Fri, 14 Apr 2023 09:44:43 +0000
Received: from mail-vs1-xe36.google.com ([2607:f8b0:4864:20::e36])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnFyz-008uPt-19
	for linux-phy@lists.infradead.org;
	Fri, 14 Apr 2023 09:44:42 +0000
Received: by mail-vs1-xe36.google.com with SMTP id f10so4167267vsv.13
        for <linux-phy@lists.infradead.org>; Fri, 14 Apr 2023 02:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681465479; x=1684057479;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A9qtR8MfLyUro92cvio9eras0UzllKy7Sr+yZKv+eGI=;
        b=nhby+tqpg7YJ3N4OPK8KreZkbQg6ksdB/JTX68tRFhDyAoY8mLfE8+n4fUhA1he3SH
         syCBC1bzBBLpYlc3A6zC35W3pKoXnhoZAkQFOHA/EBh8KWjR/hpHC7ViDP61qU78nVsA
         X1p10pbqhmbWwu2QEn9P5BQVleAflNQwm7V1IzntisfmnxN/M7cEMZCwJVQ9TMocTEHo
         V9MmnYyG91LKOtQl49ZnItrsYJRFZY45kRDhK9g6hVxsu0PsjFTlEPrINxJbMYMkp/gO
         2r+Cldw2TYaPuiQZ++ihVAXcfiReaeZ1SA6hYyME9IASPr7mnD1wwXGdLfp1kA9c/Llt
         V31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681465479; x=1684057479;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=A9qtR8MfLyUro92cvio9eras0UzllKy7Sr+yZKv+eGI=;
        b=gCBcGS68HwyNvqTiE6dhUWrHaRKP2QbU+gu1g3if9e6ET1XChAJoFYZw9GnAQAZ0Q8
         EtlqsE/afEa0/iXyEGWyMtm2dNnlrUxq9zLtTiaKWkVPM42S7/xIguaJ/zsUad0XIWsR
         ZnbxSAnqt4/f0u+Z6/plOv5TYc9BDwWHsoGV42w4DNLjIxOv6+6hL7lbM3bRHc83iNwr
         CoFgmjtOHl0c8k/GKEcPQmtJPywlcPeVfKY2uCqogeFqmwpzZ4ajVlDThvU332FdwwS6
         bvpMv0a7tDZ2WehBzbIIHo1d33nET4kt2L4b7TNiydEA5cT0LsMDmw56lJ6E479+eHhB
         FpPQ==
X-Gm-Message-State: AAQBX9ddZ85TGa9RBr32Vfwq3T2AfO5+TTc+659HHCWTZZwQ0Hp06c0S
	JGTQdJpZ0cJbLqdlY6am2FB7gJeWVzgodqIJPS91mg==
X-Google-Smtp-Source: AKy350bKBwBmi6cLGqm9/lBs1aIURMXTFZrrJBXiy+LtGEE/iALnQZQfMf/HVW2YEzuMSo6l8V/a9yUF8SDrFi8kr64=
X-Received: by 2002:a67:cb8d:0:b0:42e:3b77:b77 with SMTP id
 h13-20020a67cb8d000000b0042e3b770b77mr1289462vsl.1.1681465478942; Fri, 14 Apr
 2023 02:44:38 -0700 (PDT)
MIME-Version: 1.0
From: Naresh Kamboju <naresh.kamboju@linaro.org>
Date: Fri, 14 Apr 2023 15:14:27 +0530
Message-ID: <CA+G9fYu4o0-ZKSthi7kdCjz_kFazZS-rn17Z2NPz3=1Oayr9cw@mail.gmail.com>
Subject: next: allmodconfig: phy-mtk-hdmi-mt8195.c:298:6: error: variable
 'ret' is uninitialized when used here [-Werror,-Wuninitialized]
To: open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, linux-phy@lists.infradead.org, 
	"moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>
Cc: Guillaume Ranquet <granquet@baylibre.com>, Vinod Koul <vkoul@kernel.org>, Kishon <kishon@ti.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Netdev <netdev@vger.kernel.org>, 
	chunfeng.yun@mediatek.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_024441_405867_F3BB06B1 
X-CRM114-Status: UNSURE (   1.78  )
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

Following build warnings / errors noticed while building allmodconfig for arm64
with clang-16 on Linux next-20230414.

Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>

drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:298:6: error: variable
'ret' is uninitialized when used here [-Werror,-Wuninitialized]
        if (ret)
            ^~~
drivers/phy/mediatek/phy-mtk-hdmi-mt8195.c:216:12: note: initialize
the variable 'ret' to silence this warning
        int i, ret;
                  ^
                   = 0
1 error generated.


--
Linaro LKFT
https://lkft.linaro.org

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
