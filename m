Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7B2BC4332F
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 09:26:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wBUJHItl6nLraUEOgrvLn3R7XWOl/GQLYGnCnmLPLAA=; b=moarwGJiBvc15d
	VXkYfTgANFM2/1176dtTu7v2ClTaVzY7ksIqRDPiKoz2QeYn6mNCQ9dnMpZNXzDX/t+zSt4q+4PiB
	hGCzLzUtXCSjNwN2bxJdv1E1++9QsgIkecxdSe5+xBTYzHrr4AIE65XRjHcCrY0n8FjCSe968oYit
	zYlpaPrcdhm+xA7tP/7P8Wamt4ViSAN+xdOS1Nnr07i9bE/XKroRELdmsuIGDbHIJlMHi8Mw9xY9a
	XECGlUkw9elvAGhZBk6UpxY6zs6xo/Wg1iFO7nudJB14ylZPg5kTOEnVZ2yhVe/csq1OBvs4ndU7Q
	hcB0BjsFsi1ii9PXPTXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mx455-00DHOh-8F; Tue, 14 Dec 2021 09:26:43 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mx453-00DHNw-3G
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 09:26:42 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A89EB6140B;
 Tue, 14 Dec 2021 09:26:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 48DA5C34601;
 Tue, 14 Dec 2021 09:26:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639474000;
 bh=TOLTm6YtZnnWFSSc+W+XHIn01BkM0SMw7/Ncg+XzZjk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JyEaldnrWOeLhL3j1I2Idc9pqZy//1mzyvVyJp+5wmoydCIi14ue80RRK5e070new
 828qrukDZtJoofSdOg0kJzcx0RdwSXBHtJbMwTLt0j0TpfUyNBK+DIoTWtqje0ghdP
 PnWXiKOHcrllDIDZNR3MUH3nyXP2WlpQvWgCIESrKu1WjgnCuvb+bRcqJgmlPianO+
 7jAVD/+KE1SphGyKUZrmnfcRVpg+ooltR+41jVw9j7m+2WvbfDsXsGGMOG/fviXT/+
 wdEylmlswA0zpWyt9i3eTtRbZm/PKyVNJBWo2lw3L0QjPMKILj9roUwj0/vMkewfSp
 ena0o6uSTlcsA==
Date: Tue, 14 Dec 2021 14:56:35 +0530
From: Vinod Koul <vkoul@kernel.org>
To: davidcomponentone@gmail.com
Cc: agross@kernel.org, bjorn.andersson@linaro.org, kishon@ti.com,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, Yang Guang <yang.guang5@zte.com.cn>,
 Zeal Robot <zealci@zte.com.cn>
Subject: Re: [PATCH] pyh: qcom: fix the application of sizeof to pointer
Message-ID: <YbhjS2Nb8yrT9Nzq@matsya>
References: <8d75af8e322a7e5839d2dd4320b696ee09ec0843.1639100549.git.yang.guang5@zte.com.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8d75af8e322a7e5839d2dd4320b696ee09ec0843.1639100549.git.yang.guang5@zte.com.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_012641_201740_05E0583D 
X-CRM114-Status: UNSURE (   9.22  )
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

On 10-12-21, 14:21, davidcomponentone@gmail.com wrote:
> From: Yang Guang <yang.guang5@zte.com.cn>
> 
> The coccinelle check report:
> ./drivers/phy/qualcomm/phy-qcom-edp.c:574:31-37:
> ERROR: application of sizeof to pointer

- this should be tagged v2
- You should always note the changes done in v2 (after the --- line)
- subsystem name is 'phy' and not pyh
- I have already applied fix e87f13c33e126ab2c72f9acb5ae98fbb93ddfd32

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
