Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBC65C9833F
	for <linux-phy@archiver.kernel.org>; Mon, 28 Sep 2026 10:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gOwDWVcatjIF4ZZUrtq2b7QyQwOi/bDZ4EPIabkwE+c=; b=bs1oBgIt1trmgT
	O8pJdEfb/eJj4bb96Q0DQVaNoz6V6aw42TF3eP92d2e4A/JGHRqoQv6ExAClxQAthVChy1wkQkIsZ
	66bOGjIbPjm0OvL/04X3dZpNT533OhH/rtIxt4mE+i9+jMp8wN69DxW4YmJ6kGjdWdKGgakeqOydU
	oxJsiXkZp6yC3ZoY4j9EEZAa6ERJ3YdHh2wH7uEC5DTdNsIHKp6I7/fJA7laOg/1K9rLzzJO/ojSp
	MPGnTjsgbizjH+DIs6+yvmOk5l5XkfOkkWRGawojMZqj0eKU8puEW366uZrg1R5S0bp3/HVsB318n
	NFik9i9e9dNhhx3fjd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB8Pk-00000000KSt-1d4D;
	Mon, 28 Sep 2026 10:16:52 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB8Pi-00000000KSM-3XtN
	for linux-phy@lists.infradead.org;
	Mon, 28 Sep 2026 10:16:50 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id E7DFC601F7;
	Mon, 28 Sep 2026 10:16:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 700881F00893;
	Mon, 28 Sep 2026 10:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790590609;
	bh=mK8ulxnnMyP5eYT/pg3uyc6XYyBAinaTknBXP5XtnZA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ES/gPL16MsVcOsAJ7UHwllsLtlGfv3MBKpTIvn+xuuClTj+jY7hev4G7wJc14Pjm9
	 aUFFlURIeqo++FJW4LCti3ieqN4hQHjjvstl2m360zskD0xfcDVzf3nSYutszbFSRt
	 E0O6ATp3950xLbz66TBsrtNgjnmhyE9gVFl7S5y9yI++KGulhIPx9WA4uIYtCSTsKu
	 7WP1Z1gqCxAAQWma0rYq4g2wtMfD8zO55kpbvYogdoMwQtgAmS0x+X7/7SOkvcgSNj
	 BidbUD7uMAbyyOTnMvOAzi9M3et/JL/ip8NXXnUev1tshZyza4uffkdQ4tTNqhFGqb
	 +T/zPb+4NNCWw==
Date: Mon, 28 Sep 2026 12:16:45 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mohd Ayaan Anwar <mohd.anwar@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Manivannan Sadhasivam <mani@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Lorenzo Bianconi <lorenzo.bianconi@oss.qualcomm.com>, 
	Shawn Guo <shengchao.guo@oss.qualcomm.com>, Zhangfei Gao <zhangfei.gao@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] dt-bindings: phy: qcom,sa8775p-dwmac-sgmii-phy: add
 Nord compatible
Message-ID: <20260928-gregarious-deft-boar-e776ae@quoll>
References: <20260923-nord_ethernet_serdes-v1-0-f8ac1c487882@oss.qualcomm.com>
 <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260923-nord_ethernet_serdes-v1-1-f8ac1c487882@oss.qualcomm.com>
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

On Wed, Sep 23, 2026 at 05:34:17AM +0530, Mohd Ayaan Anwar wrote:
> Add the qcom,nord-dwmac-sgmii-phy compatible to the Qualcomm DWMAC
> SGMII PHY binding.

Why random order? Why not enum with existing part? Why not even
compatible with existing device?

So many questions, yet commit msg copies subject.

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
