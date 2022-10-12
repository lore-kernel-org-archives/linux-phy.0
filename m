Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD68C4321E
	for <linux-phy@archiver.kernel.org>; Wed, 12 Oct 2022 18:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LEHzG1sC88zOTMadsltKBR3opaJdYuSzu7PnxJyknb4=; b=L0vQtxwIrhYKXz
	4v3pXvqJnFZkgqBLA1fqRUltgcTTgXDe40KYVYqjbihMvz/YCiJ0ldOnjIB2ZaQzLYUajSV6VdaBQ
	hakoGqPlvPxg3rhTYXDaGp+dJuUUIZDiR9TqIqkcXzxnTg0ymZcfDFcZo00/MsyqRw/zQ9IFhx5Y/
	VKqrw7Aw3f0FZujflrGxoh2NYKHVFDeKZ91b/4xUT77/Eh4e3lth2ZCe4SmqMKrjw0mvf6NaNbr3M
	NWoIgfyX8QQW2rVCrf5XssKTseUihj0tOGx3R5TQz+nq6JZXjYi3Chymncnl8cKWfEpmEDVYwQcW9
	0NMiUYNy5r+LkhkDTUOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oigVp-008zac-Ku; Wed, 12 Oct 2022 18:31:25 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oigVn-008zZZ-CD
	for linux-phy@lists.infradead.org; Wed, 12 Oct 2022 18:31:24 +0000
Received: by mail-pl1-x62f.google.com with SMTP id l4so17018983plb.8
        for <linux-phy@lists.infradead.org>; Wed, 12 Oct 2022 11:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5tAqUnu5h8rAVMtbB+FKyxeFkhIJL7VzFEtUmPpmJDA=;
        b=mXjb+QXRlYo0akoSv3PaoWZ4NSgieFYMaHywaeMtJHKO2vY4zcNG1zl0Ox9HEh9uf7
         9ITp+MI7Xd+rl5IrO/HGwjtCsbF3fs1diciltjVQTGrGemRVCl0W3bkbCGaW1Y4pP0yq
         C+2Gc3R/j5LrXvvQ8aLtLF5LRyV9Em9QvfmsU4Mk/80jrdxDCu/wZLrU2Tq3IskMdgpZ
         YwMiVw66u9oM0DbjxBYdNZ8S9WqtAnaUHo3DqFoM46g8lLTzWfhhGUtoUAoVhPUXyATj
         bDBYAA3tSh6mh73MuMR12u/Mwt37tiFenzPQ6c2pDqUlgyeSddEp8mMbh0h4cOzHa8dM
         ipWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5tAqUnu5h8rAVMtbB+FKyxeFkhIJL7VzFEtUmPpmJDA=;
        b=LXyof7Ru1VnIXVKQmYaWaX3HfqIs58zr+NeS3BoN4WcTGE+d76q8gzTTPuQOqdio87
         tPwReYGfcrguy0QJUdVtccDi8BqExyNMmoiERVqL+SEdNwXy2VL7KOYsrLnI77CXltuD
         lQD8XO42B594uelGZCHFc+OclLySbRDJ9JF0wBreMj+YE2Z6PnYgkxDuNytioCOukH5n
         zdhULdbVT3X9ln7vUnuIV+KSsH61TFekW9NBFvVgp0YfEUHu3PPlKzmi+WYdssSlkspw
         /iYLpOkI7SY22jZVogqjTdg2e8JJEqTQjcpN7013XIp3LaR0gUYWFeJI+/s45e5b6bFQ
         b6sA==
X-Gm-Message-State: ACrzQf3itpB7h/aq6AObjKqAmCCsxOVkwd8mK0IiHl5KeV1tKB9fZoOH
	yqUjUmmhLVqiNhymLVyEh3sly0KE0TSGMUJjVIc0cw==
X-Google-Smtp-Source: AMsMyM6/I3x+f8jFzDA32M6v16hPvWIjQfqtnawjwThjPMRgAzjQ3h3WLO0YhkwAZ/q9coLz7eayocqj9uw5QftREgE=
X-Received: by 2002:a17:90a:4607:b0:202:e22d:4892 with SMTP id
 w7-20020a17090a460700b00202e22d4892mr6402905pjg.220.1665599480880; Wed, 12
 Oct 2022 11:31:20 -0700 (PDT)
MIME-Version: 1.0
References: <1665387971-17114-1-git-send-email-hongxing.zhu@nxp.com>
In-Reply-To: <1665387971-17114-1-git-send-email-hongxing.zhu@nxp.com>
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 12 Oct 2022 11:31:08 -0700
Message-ID: <CAJ+vNU2G_zVcFBmS6cR-HQk0XKgx_KaXvwSNmCHRgDy69=J_4g@mail.gmail.com>
Subject: Re: [PATCH v12 0/4] Add the iMX8MP PCIe support
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: vkoul@kernel.org, a.fatoum@pengutronix.de, p.zabel@pengutronix.de, 
	l.stach@pengutronix.de, bhelgaas@google.com, lorenzo.pieralisi@arm.com, 
	robh@kernel.org, shawnguo@kernel.org, alexander.stein@ew.tq-group.com, 
	marex@denx.de, richard.leitner@linux.dev, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-pci@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221012_113123_650183_D7506CDA 
X-CRM114-Status: GOOD (  10.99  )
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

On Mon, Oct 10, 2022 at 1:07 AM Richard Zhu <hongxing.zhu@nxp.com> wrote:
>
> Based on the 6.0-rc1 of the pci/next branch.
> This series adds the i.MX8MP PCIe support and tested on i.MX8MP
> EVK board when one PCIe NVME device is used.
>

Richard,

This no longer applies to pci/next (pci-v6.1-changes) and needs to be
rebased. It does apply on top of 6.0-rc1 but then the patches to
pci-imx6.c and imx8mp.dtsi are missing so I'm not sure where to try to
base this off of.

Do you have a repo for testing and have you been able to test a Gen3
link with A1 silicon yet?

Best Regards,

Tim

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
