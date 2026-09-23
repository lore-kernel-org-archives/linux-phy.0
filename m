Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 74E80C98306
	for <linux-phy@archiver.kernel.org>; Wed, 23 Sep 2026 02:55:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeNn4dVN2aYJSW9wtQoSbgMkmylFMlekKl99LkA8LSM=; b=HEqXU3zx+0qRvB
	fzGnT5ahr724qQ5DDQPxoFW86PmWHNYvap9xUSvtvoQ2fqB35RvIXXftNSKr0Jcfv1ubVnFKfCuBt
	GrhhcMwEppG8Bc1ZYBt43QjwPaQ/7z6/CyXFL9+7HVaovfLMuWAbMb6yWI12vAY9Cste7v4Be8zPM
	q5/QLO2YSjS3AGnRTX/qZ3BgSs/FofQPQ0upRjJeFcLpv7DA/HqqQpBhXaGWKhWD59WsQSSAiz2Pe
	6P3IN8h6RJcpn8nJkbZHtlTks+O6sdVD48V7JYhyNzJYkiohynq6Rs4GdiESUk2lE8AuU1c0dq2gs
	roM5qbJiFIgQ57XdbFCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9D8y-0000000705Z-49t3;
	Wed, 23 Sep 2026 02:55:37 +0000
Received: from [50.53.43.113] (helo=[192.168.254.34])
	by bombadil.infradead.org with esmtpsa (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9D8x-0000000705I-0ROC;
	Wed, 23 Sep 2026 02:55:35 +0000
Message-ID: <086e1b04-c437-40f0-b71a-4f7e62a52c75@infradead.org>
Date: Tue, 22 Sep 2026 19:55:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] doc: phy: Document some bulk helper functions
To: Inochi Amaoto <inochiama@gmail.com>, Jonathan Corbet <corbet@lwn.net>,
 Shuah Khan <skhan@linuxfoundation.org>, Vinod Koul <vkoul@kernel.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rhys Tumelty <rhys@tumelty.co.uk>
Cc: linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, Yixun Lan <dlan@gentoo.org>,
 Longbin Li <looong.bin@gmail.com>
References: <20260923023304.78428-1-inochiama@gmail.com>
 <20260923023304.78428-6-inochiama@gmail.com>
Content-Language: en-US
From: Randy Dunlap <rdunlap@infradead.org>
In-Reply-To: <20260923023304.78428-6-inochiama@gmail.com>
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



On 9/22/26 7:33 PM, Inochi Amaoto wrote:
> +Missing Bulk Helpers
> +====================
> +Currently, Only a few bulk helper functions are added as they have users.

              only

> +Function not upstreamed can be found at https://lore.kernel.org/linux-phy/20260904083709.425893-1-inochiama@gmail.com/

-- 
~Randy


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
