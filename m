Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E6E3C3600E
	for <linux-phy@archiver.kernel.org>; Tue, 17 Sep 2024 10:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date
	:To:From:Subject:Message-ID:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=65Rqs1dWQSa9kNu36JwMYA6toN6Om8ykzud0vwzjdN4=; b=O1r7iiYhq8vDi/
	SrnbP+j9NBLBE7E9nGRHOlOECMItyr/vpHwXvQqfsuYnWIjQW54Foyr237Jrj9pMJlvY0ro1MpSNW
	EvDfwYDQw5WeFsu6d/pXO1f1AOT4rD94vLgUc2PTCQifTVD9l0bVhtdgP/BQc7i7RGCIZym9TpDmf
	4NTIJjP9Bv5gSqMQJRhQyv51qJukFTJe90RQkn3S1FvVxBQRdDyVIWMSiJ/Dfu4u2o5GjiPIKD808
	pQCCJrzRRUl+aRF6HXSz4uJaJrIg66hNawYTLrGmgbt39PrlKRPxiC9lvN/ANxPH3TYh6YZ9WiyxR
	Hn6YS8sOJLBlXZFOFZKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqVuH-000000060AV-3vyT;
	Tue, 17 Sep 2024 10:58:06 +0000
Received: from mvps.dorpstraat.com ([45.153.185.202])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqVuF-0000000609Z-0HLj
	for linux-phy@lists.infradead.org;
	Tue, 17 Sep 2024 10:58:04 +0000
Received-SPF: pass (mvps.dorpstraat.com: 127.0.0.1 is whitelisted) receiver=mvps.dorpstraat.com; client-ip=127.0.0.1; helo=[192.168.111.12]; envelope-from=martin@stroomer.com; x-software=spfmilter 2.001 http://www.acme.com/software/spfmilter/ with libspf2-1.2.10;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stroomer.com;
	s=default; t=1726570072;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	h=Subject:From:Reply-To:To:Date:In-Reply-To:From;
	b=GmW/K6pcg8+NtG0SyfqPX5zrsKGj2qfwt/vr4WaMLHzk2u6XVXo4807hwe3ehyBSj
	 ifIv3LSegVR3vzw81yW8xRm8IEYWnafuX7Jr37Px8NEt2ZLguj4DTT7csx155NiOA0
	 Qu1ikZGugeHz0z1x8N/+jBqgY9/yCG9o9/6QuVq0=
Received: from [192.168.111.12] (localhost [127.0.0.1])
	(authenticated bits=0)
	by mvps.dorpstraat.com (8.15.2/8.15.2/Debian-14~deb10u1) with ESMTPA id 48HAlqbZ000457
	for <linux-phy@lists.infradead.org>; Tue, 17 Sep 2024 11:47:52 +0100
Message-ID: <6012a5d3d43137803beafe0c15ecd7a3fe86d703.camel@stroomer.com>
Subject: Re: Re: [PATCH 0/2] MIPI DSI phy for rk3588
From: Martinus Stroomer <martin@stroomer.com>
To: linux-phy@lists.infradead.org
Date: Tue, 17 Sep 2024 11:49:48 +0100
In-Reply-To: <20240506124836.3621528-1-heiko@sntech.de>
User-Agent: Evolution 3.38.3-1+deb11u2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240917_035803_375387_59CB4F50 
X-CRM114-Status: UNSURE (   2.68  )
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
Reply-To: martin@stroomer.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org




-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
