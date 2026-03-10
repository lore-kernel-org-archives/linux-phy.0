Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 730C5FD2D6F
	for <linux-phy@archiver.kernel.org>; Tue, 10 Mar 2026 12:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MzxenDTz88Q6eImbYxDKQ//GSmWGSfT8atWvGxCaHKk=; b=SXrdDTLKUqh21i
	WHn9DX+egwUs8JWrV9H7WhZ0Op1s//C0tvEhT4NJXDYOYO8syik12ang4loaF3z58GSQfnFL+uyuX
	ldNLI84BQSv5QQOWaF9r1//ajaL92UmrduWCPxzp7WKKsuM42r5URQ2uZA+6ZWYnAtTBfQDrDuDpI
	e8+Js+rSc7iXKEi1oQaMhBw6wZIFRmXTwxvsZ5JPltU3zDL3QBJCUMcNgGfKGIELNduzgdSlmJ+8m
	yttmS+W7BpMF1LDQU0MHthu0VftFlvJYnAAqP/e/VoKaDf0yWAG71aZ6lGysYXz8lNskcRXRBiSLi
	B8ZuHLY5zwDoa1dSZmxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzwbD-00000009XmB-3prA;
	Tue, 10 Mar 2026 12:54:11 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzwbB-00000009XkT-0B9W
	for linux-phy@lists.infradead.org;
	Tue, 10 Mar 2026 12:54:10 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2ae3f822163so83545ad.0
        for <linux-phy@lists.infradead.org>; Tue, 10 Mar 2026 05:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1773147248; x=1773752048; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mm6hm+LHoMGo5Ew01sq1dP9YSITnoqIDxYFDqmtgvh0=;
        b=vNZVR6oHwfj80xd6FDiXZ5Oe1oOxo70b55yv0kZzy/YJ3CNoaTDac6mOcWuRAc9KdB
         4Dhh/+cWFIyzhg+zPdz+xQTBHd3RmeuYsei1rGN8YXL6OlxmsreixnRgObpD9zCIFYxZ
         UK3gfO4fWDgtXfD7SOXFEcKlDESgWW+A2KzxRzHC9VaENuuEbbkB48LLjCqxIBaewBjg
         Dvel62z6lDpTpD59e1X6vx2sMK2Kb2LKxlXU3WjceaXjEroVSB5vmnvsS9waAcKhXeMh
         dQ1JQEqfHTzxKMBROv6M9E2qVd8ksMXz9n5kagJL/lL/I9DWd2WQhZZrvecg0QdKF/9c
         Iwpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773147248; x=1773752048;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mm6hm+LHoMGo5Ew01sq1dP9YSITnoqIDxYFDqmtgvh0=;
        b=KOS1vJSEtDIsgE3V8UJAjcoFVlXXKw8jdbdoCScWTOFtCL3GgFOrV7AZFhPLpdBNcb
         NSL4Qu9eZyqc3ABeL3Ew7zaBKYRScYZ8Bw7Ulf4cjyzWk/v9Pl0VMpf4l2mlquW9KyL5
         pI4dsswS4/b3RF80ZCA70eVavtBJ14+rHUDBFhSlFeoJ3TAQNtVFr0gVZExohe6Pw6rN
         Ek2dv/eVYRvZS1oLAyVc/KKjDI4PMyhlgzqe3MlLpB0n/tOSwdmNY5402WAAeIb8UeM+
         MSzeNPI8I6ZWm7s6n1+QjR/YapA5e9CHwhPXT1vfgV0xDTXek1eclZs8qK9kLGwpmoLH
         hOUg==
X-Forwarded-Encrypted: i=1; AJvYcCX17lBV5F4ovscdmWjo9eh6PY7835AHCzG6Swi9vVn8v1uyPLBAwPaO/sFg9gvg6P4vdxLzq/JkYcY=@lists.infradead.org
X-Gm-Message-State: AOJu0YzmyCilnVirsT2srp+pUlT2kHvZ/0EhUaln75uOZc09NpZzZXqT
	rNojZKTKa/h3y/MsYQ5RkssXlUSZbVpNqWcTxetuNLvBRszwsruog2rLB8UJw3f+yQ==
X-Gm-Gg: ATEYQzxlPnYVPQ+IGGTDTSh7G8U0566SFQteUEUG+e7Lyixvj3Dt4pAmjsWV+IKBzgc
	E8u5//YcCpuwWpPZA5cIf9v+9dfpCUt7Y8diThGHOnZ04Get2p/w3AVtVQJgKWyxwxpfa3C94jP
	kblTqR/LtBiA7pNJR5pg8bB8msxUyy0gMjaxAJNHtYpIJfDzroYUCARXMM8x/Q7JuF7m3qoub86
	l0SoVA74aami3w5VJnqmYZif4UtHKXEBBGh3l1zdihPv71LqfFLAoR1Pw4eXMSsGrZB4zrDD/8I
	Lw/3PM0ggboNQvFfeBHiGDJSFsaStW4owhG9ghjP6JzqE2mOzWnngI3oPxQHpxfBM+5pfdiBG32
	UjEdPCjqjFGG8qov/cIBAxmtCTnpgamrXcGLFyYui6l0uR0FuAuXAofOIO1zNG+mwfzEyrphuU4
	YqkDuDH734KtsM4DeYE+kdyvshhK7AUUoQrWoh8RNNs5PLtpKx7ws/12pLzQ==
X-Received: by 2002:a17:902:ebd2:b0:2ae:45bb:bc4e with SMTP id d9443c01a7336-2aea30ebe48mr3008685ad.24.1773147247400;
        Tue, 10 Mar 2026 05:54:07 -0700 (PDT)
Received: from google.com (10.129.124.34.bc.googleusercontent.com. [34.124.129.10])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e0cb73dsm12445679a12.11.2026.03.10.05.53.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 05:54:06 -0700 (PDT)
Date: Tue, 10 Mar 2026 12:53:54 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
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
	tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
	Alex Williamson <alex@shazbot.org>
Subject: Re: [PATCH 46/61] vfio: Prefer IS_ERR_OR_NULL over manual NULL check
Message-ID: <abAUYvx6VEdSmInm@google.com>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-46-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260310-b4-is_err_or_null-v1-46-bd63b656022d@avm.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_055409_108072_5DE0AE83 
X-CRM114-Status: GOOD (  16.46  )
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

On Tue, Mar 10, 2026 at 12:49:12PM +0100, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Change generated with coccinelle.
> 
> To: Alex Williamson <alex@shazbot.org>
> Cc: kvm@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
> ---
>  drivers/vfio/vfio_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/vfio/vfio_main.c b/drivers/vfio/vfio_main.c
> index 742477546b15d4dbaf9ebcfb2e67627db71521e0..d71922dfde5885967398deddec3e9e04b05adfec 100644
> --- a/drivers/vfio/vfio_main.c
> +++ b/drivers/vfio/vfio_main.c
> @@ -923,7 +923,7 @@ vfio_ioctl_device_feature_mig_device_state(struct vfio_device *device,
>  
>  	/* Handle the VFIO_DEVICE_FEATURE_SET */
>  	filp = device->mig_ops->migration_set_state(device, mig.device_state);
> -	if (IS_ERR(filp) || !filp)
> +	if (IS_ERR_OR_NULL(filp))
>  		goto out_copy;
>  
>  	return vfio_ioct_mig_return_fd(filp, arg, &mig);
> 

Reviewed-by: Pranjal Shrivastava <praan@google.com>

The cleanup alone looks fine, but I'm not sure if the maintainers would
be happy about the tree-wide spam, since each patch might go through a
different tree. I'd wait for Alex's preference/ack on that.

Thanks,
Praan

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
