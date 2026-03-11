Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39389104950E
	for <linux-phy@archiver.kernel.org>; Wed, 11 Mar 2026 09:32:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9Z+FuGCLT2FKN7yvQ52HPvifW5ENoGmUlIDfM+sBhs=; b=spt8q4A/9ex9C2
	4jU+H/Np4pCXxUZkFbLkXaMtgoPL2krSahFavPEwVZ/nsLqoYIuMo/PO35w9PHZfKV1EM4ixBtu9r
	MmPk1L/22K9LWNIi1TVovvZLZ6jHT412tBhHFVbhyvGW1/rKxyD6Rg3wXGAh9BkGjvIUR3aPZTQPy
	2F72e7q9wmXfj54FHQtv1j9rMyzVs1aTlC1GUJB0zhUEkVP4sCjBbi5RmiR5XUl4Dp4pHI948dIqi
	ZDljRIN7+M5c5hw+xehfF/Kt5iDNVaIMY964WuRvcGfZhLK/hZZgJrMCgsN5C1fAkzIHjwkRYW3iT
	YalaaD/+lgQ3IeRVFE1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0FvX-0000000BI87-48d3;
	Wed, 11 Mar 2026 09:32:27 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0FvX-0000000BI7Q-0ZWg
	for linux-phy@lists.infradead.org;
	Wed, 11 Mar 2026 09:32:27 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 5B11A6057A
	for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 09:32:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BC34C2BCB3
	for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 09:32:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773221546;
	bh=JGYhPK256pxU9EiY8jbQSSjgozqR8V5kd9EUseD+GRo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=HFhFoVNiTrG9LQIv0ppKNoD/HrLrqirjTX+9UZCfZCZR1ACy9KY8vzAF+UubsxXyb
	 7A/AuxjB4pyfRVKpNo6VtwqDxAsV9i3OOu1suwbvFFD+dDURdR+fYaKC55vrGeQY9Q
	 cSfgyMDf/Q66zJ3KWwfMvjGW3KxBKWlpZI+D0gyhlDHCmqkd60AvBaOv309nWmMVWV
	 CYlN2OWwesW62EumkmGZjYKDzJerzMaIQkjARv2P34b/XlQnitMbZc1GQEBU1oFAvA
	 btyT8hZcwwyybJD9LXcRDJBi0I3lkqqR8+lcx+5G7+1oP2ywnfC8KCi8970yZ/P/V5
	 nMGE+UjgzzO6g==
Received: by mail-yx1-f41.google.com with SMTP id 956f58d0204a3-64ad79dfb6eso13636812d50.0
        for <linux-phy@lists.infradead.org>; Wed, 11 Mar 2026 02:32:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVfavZZyQmhU8HitQ+7cKRUy9wTDA7G2zjsRu1fkLKLX3b7oG5qOQgpnQuFtoI8EXjTGbMyjuuVQ68=@lists.infradead.org
X-Gm-Message-State: AOJu0YzXAGCs9XArkb8CLdv+2qj3KxAl7AFfhSnYnxr8VeqddgiSirFs
	QPJh4jfJzrC9PGIOBAdR5vF+ebXiilo/pvJz/3xHIFY7zwEGk9RGf9L7dN1clBAQNvqqhUVbq6e
	rI+iCBw0uNDv2KDGjwoMMsXROZEL3kGQ=
X-Received: by 2002:a05:690e:144d:b0:64c:e890:fbb9 with SMTP id
 956f58d0204a3-64d656f696dmr1649157d50.20.1773221544775; Wed, 11 Mar 2026
 02:32:24 -0700 (PDT)
MIME-Version: 1.0
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de> <20260310-b4-is_err_or_null-v1-41-bd63b656022d@avm.de>
In-Reply-To: <20260310-b4-is_err_or_null-v1-41-bd63b656022d@avm.de>
From: Linus Walleij <linusw@kernel.org>
Date: Wed, 11 Mar 2026 10:32:12 +0100
X-Gmail-Original-Message-ID: <CAD++jLnDv00ErgVdQ4EBpKH9KMWrPD8ODrQ6m846zyQ=wNzCzQ@mail.gmail.com>
X-Gm-Features: AaiRm52aI8z_G2E4qYaKWPEA43RhLektjwMDQXSLwHd-Xy_BYcin-6heFFY4jM4
Message-ID: <CAD++jLnDv00ErgVdQ4EBpKH9KMWrPD8ODrQ6m846zyQ=wNzCzQ@mail.gmail.com>
Subject: Re: [PATCH 41/61] pinctrl: Prefer IS_ERR_OR_NULL over manual NULL check
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com, 
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr, 
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org, 
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev, kvm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-block@vger.kernel.org, 
	linux-bluetooth@vger.kernel.org, linux-btrfs@vger.kernel.org, 
	linux-cifs@vger.kernel.org, linux-clk@vger.kernel.org, 
	linux-erofs@lists.ozlabs.org, linux-ext4@vger.kernel.org, 
	linux-fsdevel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, linux-mm@kvack.org, 
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org, 
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, ntfs3@lists.linux.dev, 
	samba-technical@lists.samba.org, sched-ext@lists.linux.dev, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	v9fs@lists.linux.dev
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

T24gVHVlLCBNYXIgMTAsIDIwMjYgYXQgMTI6NTXigK9QTSBQaGlsaXBwIEhhaG4gPHBoYWhuLW9z
c0Bhdm0uZGU+IHdyb3RlOgoKPiBQcmVmZXIgdXNpbmcgSVNfRVJSX09SX05VTEwoKSBvdmVyIHVz
aW5nIElTX0VSUigpIGFuZCBhIG1hbnVhbCBOVUxMCj4gY2hlY2suCj4KPiBDaGFuZ2UgZ2VuZXJh
dGVkIHdpdGggY29jY2luZWxsZS4KPgo+IFRvOiBMaW51cyBXYWxsZWlqIDxsaW51c3dAa2VybmVs
Lm9yZz4KPiBDYzogbGludXgtZ3Bpb0B2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZwo+IFNpZ25lZC1vZmYtYnk6IFBoaWxpcHAgSGFobiA8cGhhaG4tb3Nz
QGF2bS5kZT4KClBhdGNoIGFwcGxpZWQgdG8gdGhlIHBpbmN0cmwgdHJlZSBhcyBvYnZpb3VzbHkg
Y29ycmVjdC4KCllvdXJzLApMaW51cyBXYWxsZWlqCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
