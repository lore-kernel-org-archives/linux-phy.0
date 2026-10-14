Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6120FCC6B1D
	for <linux-phy@archiver.kernel.org>; Wed, 14 Oct 2026 02:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=stVu058yZ2ZoCB9InDBghcWItwrWv3BSFIYzCzGS/Cc=; b=OrBRQ6AeJv/Na2
	B3thWQxB1p7jgRtKAzhDIzHi4FvBMXTeXYpPeWrnhPCyYCzjmtm8JLLzdwzALOwfY8qKHvlL9OKYG
	XI1I1LAEp+SjJis/eHld+TANJygBUuo/9pwlAPFnVSCU7KshZPMJSFaLRH3b1nNkMGET2tdZIp3MM
	/4PqRKGByv6BqQyO3JdEHdJmogi0I9tnZeTDJJ3UBphaMSfgwJ2Gm23A5/vT6H+sXrgwNIBx+7Eme
	KIB1ZrleFhVoqqDkL++6oA0hxqtV8Q7dt9K9r1ly9p0xEs00SCq4YCr22sb/G7hM9LfQ5fLNnVF1l
	oMhi2vb3R+dg6+pFI4vQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGp4s-0000000ENpJ-3bqo;
	Wed, 14 Oct 2026 02:50:50 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGp4p-0000000ENoX-3Cvd
	for linux-phy@lists.infradead.org;
	Wed, 14 Oct 2026 02:50:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:To:Subject:Date:Message-ID:MIME-Version; bh=+s
	VBub+2NKfKwSiIIFQbIfVpIks6U50H3ghAE6TG5TI=; b=YMW02kAM1+T1WvCXXF
	XQkpN9hmhorlKYpitAZmf9p6vUjx087xRz/xhJ9s89jXdYQksDLLnMEFKcK+BR31
	IX1A2F5atIyncwxrui4QTF2pWJvRaVUAfYYjnO0xDQpk9ymgTjzTSjA98ON3f105
	rJa6GFmqED+My7lBG6BYEmg1I=
Received: from localhost.localdomain (unknown [])
	by gzga-smtp-mtada-g1-3 (Coremail) with SMTP id _____wD3P1zx7c5qGUW3Eg--.19561S2;
	Wed, 14 Oct 2026 10:50:26 +0800 (CST)
From: Pengpeng Hou <hppiscas@163.com>
To: mani@kernel.org
Cc: sashiko-reviews@lists.linux.dev,
	linux-phy@lists.infradead.org,
	olteanv@gmail.com,
	vkoul@kernel.org,
	neil.armstrong@linaro.org,
	hppiscas@163.com
Subject: Re: [PATCH] phy: ti: twl4030-usb: unwind late probe failures
Date: Wed, 14 Oct 2026 10:50:23 +0800
Message-ID: <20261014025023.80752-1-hppiscas@163.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <ibju7oaxrobqgk77inpnj6nymok7mhdixr2du5iqsfuqiuwubq@6zzojhupkcbh>
References: <20260615070211.59144-1-pengpeng@iscas.ac.cn> <20260615071330.279C21F000E9@smtp.kernel.org> <ibju7oaxrobqgk77inpnj6nymok7mhdixr2du5iqsfuqiuwubq@6zzojhupkcbh>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3P1zx7c5qGUW3Eg--.19561S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrXryfAryfKry7AFWrXF13urg_yoWxGFc_uF
	9YvFZ3Ga1Fk39rCFn8Ga9xXFW8X397Ca4kXwsakry3K34jyF4qkrsFyFZayrZ3Ga1xJ3Za
	qrZYy3WfGw4SqjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7VUUO6pPUUUUU==
X-CM-SenderInfo: 5kssx2xfdvqiywtou0bp/xtbC7RIGzmrO7fKyGwAA3l
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_195048_233938_2B05BA49 
X-CRM114-Status: UNSURE (   4.64  )
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

Hi Mani,

The pm_runtime_put_noidle() path is wrong here: it drops the usage count
without running the suspend callback that powers down the PHY and
disables the regulators.

A replacement also needs to quiesce the IRQ and delayed work before
teardown. The IRQ path can hold an additional runtime-PM reference while
a cable is present, and the PHY is already publicly registered by this
point. Replacing only put_noidle() would not close those lifetime paths.

I'll keep the current patch on hold while reworking the publication and
cleanup ordering rather than resend the one-call substitution.

Thanks,
Pengpeng


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
