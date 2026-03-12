Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 961A6106ACCF
	for <linux-phy@archiver.kernel.org>; Thu, 12 Mar 2026 16:54:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t9lhhP+JhMIW07SUvETgekRBtDZj/k0phztT2waf5Jw=; b=CBaWzTSEshXjjo
	8Bv0tzgRoKCaFEiZ+61+PTw+kw0oVFrRtqM4jTojuQhd3WnUPE3ZzKO4ByeiNfyalcTl5LUupKiF7
	9RhLqpceVcQZLn1MJT218FCuSAMmU3mGQ1iwRpEVxm1fLAcSfZIO1zXwQ1fGHu/37as5NmrzzCYK0
	CR0Fue5pB2QUlxgP9VzpR+Y/Cp3KJlTW8+J9kTFKLPjG5fiBo4GvLbS6VBia8kYQFj82KndCgbzhd
	iU8ZVtnUaZzMvcgTDE7pM22UIETXq/TbFeSXle/RkkydTxdmVZjRMdj5tsCLdWeb9XnP36N1NvXoK
	tj/WfXlSiF2W55QASjEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0jJI-0000000Edb2-0jRs;
	Thu, 12 Mar 2026 16:54:56 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0jJE-0000000EdYm-0PdW
	for linux-phy@lists.infradead.org;
	Thu, 12 Mar 2026 16:54:54 +0000
Received: by mail-qt1-x82e.google.com with SMTP id d75a77b69052e-5094e1d17d3so7532931cf.3
        for <linux-phy@lists.infradead.org>; Thu, 12 Mar 2026 09:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ziepe.ca; s=google; t=1773334491; x=1773939291; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=VQXCfPVu6b6dIVECzm0C8AUD7IL7VvpSkD5+M4S95sw=;
        b=UsdsnAJqPQvBZshtgN+VLLU3SwT08TUrr4ghixmMtGsByjJ1qVVWXYQ81GJLYPAQMS
         k/jsNU7shUhDXIm9x/y5r5vSBhTUYOwT5l/P9fRwoqHTWu6G/HMrTKt1nd8IppqVScK6
         oYfxrRlSnEh5Z6hLhagvYqI6BTSYgZug+uUPYF19v2CgPNzAKgDoxkDjOdqRROsxj8Zw
         RaTSGy0d7otss8KX82R3WOLZhr/WYFIyduQDfW7WxW8US8oQcLhN1K9MpJkylY5LU0Bg
         qkMEXYu6exBlWS3thd/XMLJkHngzIZGxE9nMIC2b6k0WkjohyfH7CrLt+vgd4O660HIX
         lRLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773334491; x=1773939291;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VQXCfPVu6b6dIVECzm0C8AUD7IL7VvpSkD5+M4S95sw=;
        b=qs56+b9QD2QjnHuE4diEb8RRvakqIPsoKKzkJr3NDUYUaBwyukER34HRWmEtJM5nw7
         zP+lcmsmaHrrOHkj0V80h5g4/v4YvaYFawdpxshtHkwCiJPAYM1ei0OHAFVyVOEItX0d
         4EbfPbEOrRtBW9YxO97jF7+4ObE/hwdWn9AMPpPRnzA2n3yNb8JCKZ1rbRds4yIUIJSL
         2/B1whykVqmobSCeFb3nDgNg2bWzdAKl7XsLf8Gy1tQAoht5RlwuQEKp0iEZItSkQbKt
         4oaOrTykjCo5sU0ZjrxNVfntg80t7bL7zREgaOjPbF0P7dSwUCqc7obE8QXJt9TOnj6U
         NMlQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpUBFACvZdnsk1ykocDU9kwiaNO8y774Anz/nWaKAjQqpyv2lTYkQ9/8i/Q67cUUyAdQ/mK/zsWK0=@lists.infradead.org
X-Gm-Message-State: AOJu0YzML+9AQuNZQP2jrbx0kdeBlYkvFv33PCPTrx7UChoKmZ+z81WS
	U1TQmG6psMAeiKV8oSlFv4xkHeP1fwSDKWmvzE07+wKJ+HxwBdClafPNW5LWXwvIxzg=
X-Gm-Gg: ATEYQzxaw3jMxddbXYjV2DS8TEfAbldKS2lb+6Rq3df3Dd3nBXGUrhoZCrjag4KOmrI
	SAlzfa8j9iZ+ForAm9GVUszsoPKDhKtVp7lnIroHpPkJobW/GvfCwsZOpAM6MwcOFkJnq8GCvYB
	EWlMwG0fWfhbJpzFgCwIJCb/YFmtteoe+6f3GN8Q1qeOtrdUhi99TPHtEgPG+fs8Kg3pHKw8b9D
	o3v3z/xGjVO4t8/Ur4hP6ozULiYG4ibRW9dg0yuBP0pftvRweZ66UyP2mNOEY9fJjyq2SmkxCYr
	XZW4Ld2P+lBOySKGI0WHaKpeJmVV+Z00vrfDNKqGZjll2JM0ZEm/dpJkxfqAq1aFyGYpqFqdKpP
	C+O+8b7XAwUd2O/uA8K7Ibq8u3ESWrEoYeuEJXvQXUo/ef/1t6zjw8ArBgAfBRf03dyNivX35e5
	NXF85XBFzbRg8TrZYhC76p+0htuQRzBJe9Ykgu+Yjdxo3QRgOZmkoaOJLeo/KQZ2kMsHvqAxodI
	Vl7ijv8LGSM1WeNhGI=
X-Received: by 2002:a05:622a:289:b0:509:44c3:5ffa with SMTP id d75a77b69052e-50957e10673mr1403911cf.52.1773334490530;
        Thu, 12 Mar 2026 09:54:50 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-112-119.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.112.119])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-5093a119602sm36658181cf.28.2026.03.12.09.54.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 09:54:49 -0700 (PDT)
Received: from jgg by wakko with local (Exim 4.97)
	(envelope-from <jgg@ziepe.ca>)
	id 1w0jJA-00000006i8N-40X9;
	Thu, 12 Mar 2026 13:54:48 -0300
Date: Thu, 12 Mar 2026 13:54:48 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kuan-Wei Chiu <visitorckw@gmail.com>, Philipp Hahn <phahn-oss@avm.de>,
	amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
	linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
	linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
	linux-mips@vger.kernel.org, linux-mm@kvack.org,
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
	sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev
Subject: Re: [PATCH 00/61] treewide: Use IS_ERR_OR_NULL over manual NULL
 check - refactor
Message-ID: <20260312165448.GN1469476@ziepe.ca>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <abBlpGKO842B3yl9@google.com>
 <20260312125730.GI1469476@ziepe.ca>
 <f5688b895eaebabae6545a0d9baf8f1404e8454e.camel@HansenPartnership.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f5688b895eaebabae6545a0d9baf8f1404e8454e.camel@HansenPartnership.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_095452_239758_5DFF8D86 
X-CRM114-Status: GOOD (  19.90  )
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

On Thu, Mar 12, 2026 at 11:32:37AM -0400, James Bottomley wrote:
> On Thu, 2026-03-12 at 09:57 -0300, Jason Gunthorpe wrote:
> > On Wed, Mar 11, 2026 at 02:40:36AM +0800, Kuan-Wei Chiu wrote:
> > 
> > > IMHO, the necessity of IS_ERR_OR_NULL() often highlights a
> > > confusing or flawed API design. It usually implies that the caller
> > > is unsure whether a failure results in an error pointer or a NULL
> > > pointer. 
> > 
> > +1
> > 
> > IS_ERR_OR_NULL() should always be looked on with suspicion. Very
> > little should be returning some tri-state 'ERR' 'NULL' 'SUCCESS'
> > pointer. What does the middle condition even mean? IS_ERR_OR_NULL()
> > implies ERR and NULL are semanticly the same, so fix the things to
> > always use ERR.
> 
> Not in any way supporting the original patch.  However, the pattern
> ERR, NULL, PTR is used extensively in the dentry code of filesystems. 
> See the try_lookup..() set of functions in fs/namei.c
> 
> The meaning is
> 
> PTR - I found it
> NULL - It definitely doesn't exist
> ERR - something went wrong during the lookup.
> 
> So I don't think you can blanket say this pattern is wrong.

Lots of places also would return ENOENT, I'd argue that is easier to
use..

But yes, I did use the word "suspicion" not blanket wrong :)

Jason

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
