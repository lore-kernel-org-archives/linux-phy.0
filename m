Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AA09BC433FE
	for <linux-phy@archiver.kernel.org>; Wed,  2 Mar 2022 14:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nWKNfcSod9JwgRSzkyEpQkhHldP+0UyBYi9V8fdKyv8=; b=m7Srs72l6Ddv7C
	2sAOG/eCBQCuh1p9reHqnLunIiP+AGlr1R94Kk8kbvsWfJoAdqdkg6j36ccLJYbBIQI2FnfIqG03C
	tfpudNCel+KT19StMOMxlA+bFn90KZhk1p9JfPGqmni7895JcjDO/ECN04n3EfZWXFYknFwRLf8Q8
	d+uzfGcjNSYn7IrzLQfiWMUHb48cYmEq0hhjRMzUQCOXxPZfOLAa2MuGEBr2odFaXnwdlG9qWeUM5
	ETAvm9bOqU2QZlnUzXgP84Q2fNjG8teAe0J+2XugeJsN91umygvmKYI+DdqYMckyM4wGUBCW6lwG3
	6vt4CRpjmKVx0CM2r1iQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPPy0-002zU9-Vq; Wed, 02 Mar 2022 14:28:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPxz-002zT4-M6
 for linux-phy@bombadil.infradead.org; Wed, 02 Mar 2022 14:28:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=aavQmjtaPH1P/jDweMLmK0SzXw2eMoHox8W2JO2axJo=; b=YyXDkVbnJVqa5CntaduvCUb1h/
 3o2RTfRbCY5EoT686kU/7/HUHnJPuTLC1ZMkCzVF9xdS4PG0Z13ItzbIh6xZdPVxYx2KAex7H6Fbh
 WAAFZaITudDygWYVMYN2lBnhF3vkDyM52bTj5yOZgfJlZebPYvan3Si0vwmbzlgfBBt10jUi6kKLc
 Cu7D1TUv5dFQVJ9uWr1VgjToke7Qf9hm9ZFT5LAPou34qwftpPHgeitMYjCgu7qYkUrINgu2/LaXv
 SE+dfWIxgq+D5ORu3DfMoBBAjjCQmnjbzCuAU5uHtxX/7d1IcAxfO8It5D85GanbO7cuYua7jXQnK
 pPL5cS/A==;
Received: from ams.source.kernel.org ([145.40.68.75])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPxw-00EcUy-ED
 for linux-phy@lists.infradead.org; Wed, 02 Mar 2022 14:28:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 76281B81FF6;
 Wed,  2 Mar 2022 14:28:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 59142C36AE3;
 Wed,  2 Mar 2022 14:28:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646231300;
 bh=ut9NbID3o+lZR6vImYsjP4BUbOvcddMf3AE6FYy2R4U=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OT4jXWvhqFup2NwIlGO7/Dsj87GE64Qafm96DMEcwkjhZXb49lct0TQM1G8SOvgF3
 sVSjEgVEpLiiBByJk3JbKThFVAlJ4iPpl0CTTB2K6PxkkSlISR+uygQR/royD6kmX+
 RTk5Wx3tvQlLHk4QVn9skqXp6RZRs3JBUM4xPH/ZQzMGQUhp3l/efZqIeFSaMKjgvd
 BgxBWJ12FhY4h2tn0eP9RqeOWP7ONmC4ZOIsRT/wLw4rXEc5ThjnnkyMV5xddDgZSx
 piq9enB19Vsuwk+tzp6GTur3uq2LbT17pn++zbPeBeQmp2agONeJSHj8F+r64lpeqk
 UjN5Cun9WxHWQ==
Date: Wed, 2 Mar 2022 19:58:16 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: qcom,qmp: add sc8180x and
 sc8280xp ufs compatibles
Message-ID: <Yh9/ALkRZJYla2MA@matsya>
References: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220225035105.2294599-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_142832_652333_5E105786 
X-CRM114-Status: UNSURE (   7.43  )
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

On 24-02-22, 19:51, Bjorn Andersson wrote:
> Add compatible for the UFS PHY found in the Qualcomm SC8280XP platform
> and document the required clocks for this and the SC8180X UFS PHY.

Applied all, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
