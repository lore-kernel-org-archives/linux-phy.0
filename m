Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8458FC433FE
	for <linux-phy@archiver.kernel.org>; Fri,  7 Oct 2022 06:27:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eMa+MkwWSEpI3RmwU2p83wGPJIlBAM1pHXU5l2/Uf7E=; b=joalw3ih8coC4Z
	sRaNphBCPfiPn/vn2okl9Bubkz6e4eeqEVC3OZbs81SMt4YGSmqSbhZRG88BGoKpCkfBa+KqRtFsw
	HTQ4zdWox1A7nd0wINX7hrhSBp52YzqVe/1d8yljUnRtnW0wb5XyzbPF/cBow5x+x0h7JZX4PHNrA
	hMbajE6Y26YvAZPr8E0EahVj+UDgOeO+VU8TBwPRWv3suMXhHLos2PR+s9Wdn35AXcD+XmQE0uDUr
	UiVkkrIVF1WuZQzKuK267TTz7DjvPtsO9jVVwlH8GZ8b4APQsBim8LEAU20+6P4mKypQe/BDXpwcC
	wxU8/GyOMdW/+D9p73xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oggp1-007cBv-SB; Fri, 07 Oct 2022 06:26:59 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oggoz-007cAs-8a
	for linux-phy@lists.infradead.org; Fri, 07 Oct 2022 06:26:58 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 32F2CB81C4C;
	Fri,  7 Oct 2022 06:26:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6983EC433D6;
	Fri,  7 Oct 2022 06:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1665124010;
	bh=BXij9N9202DOclCxbLmvVz+mof/Qfp7auTme1KOWVuw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=f4jpzxjHA0J54dY6VTW3447ocX5l26jFk9pehmDm/BAn5pLehCvBHKkBFnPVJ/aB9
	 OefYQMvRMAOV5QzBKcOVaQu6MsMfnKRU9MXMc0AQWSDDdcipRDlZjhkuRCblSPXkpJ
	 cMWQ71jzXJYaOC+FxHwyDiOG3wXZzK6pfZAE9tkg=
Date: Fri, 7 Oct 2022 08:27:30 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: justinpopo6@gmail.com
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
	vkoul@kernel.org, kishon@ti.com, linux-phy@lists.infradead.org,
	f.fainelli@gmail.com, alcooperx@gmail.com,
	bcm-kernel-feedback-list@broadcom.com, justin.chen@broadcom.com
Subject: Re: [PATCH] MAINTAINERS: Update maintainers for broadcom USB
Message-ID: <Yz/G0jQxc4c2gzhl@kroah.com>
References: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1665098469-19008-1-git-send-email-justinpopo6@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221006_232657_488657_F682868E 
X-CRM114-Status: UNSURE (   9.12  )
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

On Thu, Oct 06, 2022 at 04:21:09PM -0700, justinpopo6@gmail.com wrote:
> From: Justin Chen <justinpopo6@gmail.com>
> 
> Al Cooper is no longer the downstream maintainer for broadcom USB.
> I will be taking his place as downstream and as an additional
> upstream maintainer.

What do you mean by "downstream" here?

> Signed-off-by: Justin Chen <justinpopo6@gmail.com>

I need Al's ack as well.

thanks,

greg k-h

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
