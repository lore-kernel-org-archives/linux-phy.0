Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2515F606A31C
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 12:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iywpWpYs;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=cCqjw9Ln
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=R/2ewRJQqMnPGm2XuGMnt5vmxajJvYVFQFkFuegXBxs=; b=iywpWpYstsDwy4mVHisNxmBaHI
	0GYBDbjiqLpIMYnKZKx/woteAGscW3lSpxNydAn0Nj1mZSdr9meT3F9zGMLxn/9QGLPhbgW1r6XJr
	Wl6D9Bg3mlsi/WtkKkFXBmmwKRRNXOOVod4R0ra1d+cmshr1kbpygvc2dK92CAJXT/QLy/wb3sWV2
	gGZ5+eY4ZHH8z9QRUKvngPurvNlRfD6b1ef6r3eFvG0sXVMgJQFXMzVv49HHNX68+JOkE+0zVDUvQ
	UId6esFN273h9E/z+E+rLa+VrRR/JFUuGDEH5mJNSH3BSzrKgzNN2rBcNGB3+SK5FQCW8kxDERk/S
	GzEefiRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRTk4-00000009q2k-30r9;
	Thu, 12 Nov 2026 12:17:25 +0000
Received: from mail-pj2-x03.google.com ([2607:f8b0:4864:39::3])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRTk1-00000009q1I-3Arx
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 12:17:23 +0000
Received: by mail-pj2-x03.google.com with SMTP id 98e67ed59e1d1-3b1856d99f7so101724a91.1
        for <linux-phy@lists.infradead.org>; Thu, 12 Nov 2026 04:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794485840; x=1795090640; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=t+ufZCvXNHzyxYBYTdCkDnWym74ZB21L+z+qr86hT/0=;
        b=cCqjw9Lnp6HkY3hZ3q09Fch/jzvm4Hgaf1nPUl1jqDt2WZLuTmFxX4koNjjkC1hrQw
         4X3bzGPkVN8qdmalWZO0XlmoLiAZvirLdAEFV+i0EXC24EzDNHGgoKFfX5N8E1uPQZ0m
         350q9kuplYgEXyWOlGR3UtLelKup/TxP6brqKpJeo9bSEvc7rWuaiWlzPP3BC8tunvKh
         BzhntrdUaGnxdUkmX67rVJT2MOIPVAt0mza/yAmHXvaR1aEycejk7aUCdicsRzfTSpKK
         fJdMhK7NJw3Hu+8Xt5GS94tNNthTQwWVP9Q4oj07u1gr1TXg+L3b3+X/mAaT0NpJsNSl
         xu3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794485840; x=1795090640;
        h=content-transfer-encoding:content-type:mime-version:message-id
         :references:in-reply-to:user-agent:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=t+ufZCvXNHzyxYBYTdCkDnWym74ZB21L+z+qr86hT/0=;
        b=yuGzDezGTOZJUksIyqeF2/el+CJpBWI5bcPP8YhUzNMrHZRapFlP9ngi5YjTACjbsM
         SZa99Pn27ldnZdbOkV2Ok8SYdKbfrbV4bBC72ZYn0l5QmIl3BTQ1V2n5q1qbr7q9UEou
         yZPg7BYF27vGPbqIBGMa5amKf02+gmzGUPqM0YhY6y1YGtCxwg11M9TLsOUyg4liSZSN
         nqWdV5/pwayz0sYY6Yk/fEdsPhMWKkCbmlV/rZfC/56SbtwZ9JVdxPo+ccCx1Iiu1i5a
         nNoFQ5/qbF839nvzXxwKqsN8r9Z/NSfGywDTsZV+ZGVGsSec3V4oJoG04sMi5MiXY5aK
         /b9g==
X-Forwarded-Encrypted: i=1; AL+hErGC+ykE9LKpVzu3zvg1iEiVdf3UDcSUOmmnnMB97xXEAt9g43MdgM1ljGPgp/ayMQyUEuYBy9tM0s0=@lists.infradead.org
X-Gm-Message-State: APuU4Z8XIqQrTEI7iikyNWddS9r/iD2qBk4w8s4knGcZpaaxLdDv8drB
	nA5RzZWxbVgu+e2RQBQpHatvuIjDQiwlN+fKruTRCRofPYCNeJ5C0mnf
X-Gm-Gg: AYBFou2WWLoJFDb5IhCOE9WMWiR3yqesCcC46AXZ0JZ08ooweALj8RpYhbScDYkFpjY
	RjSHw1MO+AHZF+NUmqEYFpCc4cDsDMJipDHi+BKigSvvTSLE0I07uZLFg9pWFwEJNJazs4Js3to
	x6Gon+hzmxM+A8e3/c2O7MOxQPWUFSksbWTFHgH28WAXIsIWTGvHo+fQ0G/jseHwVKGqmlNr4dC
	q4s/iA1Kp+7M8i8aMCJ4/xcDCZVEla99GmeWgRCnxPpYnbXx3FKxZqn/qoyREe1iIE/CKtaornH
	7QbdTZy2uU4DEswFa0icJVBPcUyg5cdf9Kg4rOXwf275WF8HHK7atSv9ZPDWjHMRnyU8qlwmuH2
	E0HMIwmRHdt+17Zkk9YdxBMUnTc/FsYOSn1XiB+B/KKFhYfoANwLOmWMVnxCM5KNb/qj+1eHZ6g
	/QZn1TGjxK1N8Chg7G0CvCZUblYXZMR2kJsZkDIiBmy5COMv6dBZWFk8uPgG/cZg5IWIucz7r4h
	S/8ssO2L4ZTYSmLebZy8a1vs/oCnLHDKHtYz9pp6xPmDi4qi4EsF7q/T+8K891h1JMTchzZzTu+
	bfBMJeIz5Uws2fTpdOfU3g==
X-Received: by 2002:a17:90a:8c12:b0:3b0:a7b5:c044 with SMTP id 98e67ed59e1d1-3b197c81815mr1116711a91.1.1794485840292;
        Thu, 12 Nov 2026 04:17:20 -0800 (PST)
Received: from ehlo.thunderbird.net ([2401:5a0:1000:10:233::14])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3b197c8b2cdsm4489297a91.16.2026.11.12.04.17.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2026 04:17:19 -0800 (PST)
Date: Thu, 12 Nov 2026 20:17:14 +0800
From: Coia Prant <coiaprant@gmail.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Shawn Lin <shawn.lin@rock-chips.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: =?US-ASCII?Q?Re=3A_=5BPATCH_v13_2/2=5D_phy=3A_rockchip=3A_naneng-?=
 =?US-ASCII?Q?combphy=3A_add_SGMII_MAC_selection_for_RK3568?=
User-Agent: K-9 Mail for Android
In-Reply-To: <avV77eoO96zacmoq@parshuram>
References: <20261006162807.2843858-1-coiaprant@gmail.com> <20261006162807.2843858-3-coiaprant@gmail.com> <ac2a4e80-6d35-457a-bdc5-ee8511198bec@rock-chips.com> <CALj3r0gQ_U2ZUJkRgF4NdB1Gd3A8ZT3T6qjLhwGZPg=VUXLsrQ@mail.gmail.com> <CALj3r0hSyVpn4Upbun4DOk5hdOH+fzEFG2E3LpfvS2YUXH8twA@mail.gmail.com> <CALj3r0jg5Ht9UUJGryuNdJdegBkPQgSTPSE6amjCr0g0PE7i6Q@mail.gmail.com> <avV77eoO96zacmoq@parshuram>
Message-ID: <073A7037-8E56-4B14-BBDD-DA3118970086@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_041721_811007_1CEB6D52 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-10.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On November 12, 2026 4:42:21 PM GMT+08:00, Vinod Koul <vkoul@kernel.org> wrote:
>On 22-10-26, 10:32, Coia Prant wrote:
>> Hi Vinod,
>> 
>> Gentle ping on this series.
>> 
>> The net-next parts (XPCS glue, dwmac-rk SGMII) are now in linux-next:
>> https://git.kernel.org/netdev/net-next/c/5e91edfb0e45
>> 
>> The DTS changes are waiting on this PHY binding and driver to land before
>> they can be sent. Is there anything you'd like changed, or is it just
>> queued?
>
>I dont see the dt patch acked..
>

Hi Vinod,

Conor Dooley already provided an Acked-by for this patch on Oct 7th:

Acked-by: Conor Dooley <conor.dooley@microchip.com>

You can see it in the patchwork thread here:

https://patchwork.kernel.org/project/linux-phy/patch/20261006162807.2843858-2-coiaprant@gmail.com/

Or in the lore archive:

https://lore.kernel.org/all/20261007-9753b5de7344a15472337c6d@squawk/

If you need an additional Ack from someone else, please let me know.

Thanks,
Coia

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
