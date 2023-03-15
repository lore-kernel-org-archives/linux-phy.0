Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD13AC7619A
	for <linux-phy@archiver.kernel.org>; Wed, 15 Mar 2023 23:32:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VYp3hz76v0rjmJP0iSbfBgrEXhXIPH3C6z3hZkzOKPo=; b=xuOf1RoYLKwmYU
	MHIMA9gXSCf3f78aLe/FCidy/LN9jik8nI6KNt4bKUVQ+XmKwXpDVCbv0kAYP9QDav53tUYeJpWY5
	TFVm9zM5lMyKQfU3K6NF+xawg+1Q18gNFOzD38hmmpiQf6htXflZ89Kk1YF5xHWZIel2TExHW6/ZJ
	Blh8Nlp51RVlUyHapdKNDz1r+/yXHKqoyrBLvtB8zNX5FWeiPfGxszmUKbxkEdCIBW1pGpcEhKbZO
	Lgr9jXxnFJ8f5XMd5vPoI9npawS7rE1RYI78o0qTlnzGhE6jaGY/bBHTqUwSzPR7HMYL5mxDJbQDq
	io/k2nLTSMYxCQ+/wWSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcabP-00EiWF-1m;
	Wed, 15 Mar 2023 23:32:15 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcabM-00EiUt-0n
	for linux-phy@lists.infradead.org;
	Wed, 15 Mar 2023 23:32:13 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 5163BB81F99;
	Wed, 15 Mar 2023 23:32:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBA8AC433D2;
	Wed, 15 Mar 2023 23:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678923128;
	bh=FEmtlcIqqS89abT0ssoEBTavV/1rty8NOhTw/nMtYX4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=mgz6l6/MxdMd4DqHkEWJBJMf7ada+yO0vtLuy22PcKklMd82Ka6ixwwEGqJX1gugR
	 nE21JSPVDDpAXp9CWsJkRBngGVIbfuNzm8ucDtDVOAWvsAOBvqzT+i7Hu9qLJ9hQIA
	 mtLPc8bWd86yo1gmX0OGw8MAWeWfvSzDrk2dSbLG8h7GEhTYeaY/H1LC8NSurFm3vJ
	 fCWYyq9MZbEXBh/+DZhKrctiiuEai4kUwBval2xzyzTUrz3OsEXNs/Gwqg8NCWksof
	 InRGbzzv0o0lqT8VQytv22imatSjsJ6wjx72ZB2xnULWiAyz5RywrGesIX/Q1mAPME
	 jUpq4mHf1yphw==
From: Bjorn Andersson <andersson@kernel.org>
To: Johan Hovold <johan+linaro@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	vkoul@kernel.org,
	Rob Herring <robh@kernel.org>,
	Lee Jones <lee@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Andy Gross <agross@kernel.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org
Subject: Re: (subset) [PATCH v5 0/7] sm8550: Add support for eUSB2 repeater
Date: Wed, 15 Mar 2023 16:34:38 -0700
Message-Id: <167892332564.4030021.4228411970991027965.b4-ty@kernel.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230208190200.2966723-1-abel.vesa@linaro.org>
References: <20230208190200.2966723-1-abel.vesa@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_163212_433589_A13BAD0D 
X-CRM114-Status: GOOD (  12.15  )
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

On Wed, 8 Feb 2023 21:01:53 +0200, Abel Vesa wrote:
> This patchset adds support for the eUSB2 repeater found in pmic PM8550B,
> used along with SM8550. Since there is no dedicated generic framework
> for eUSB2 repeaters, the most appropriate subsystem to model it is the
> generic phy. This patchset also adds support for such repeater to the
> eUSB2 PHY found in SM8550. Basically, the eUSB2 PHY will have its own
> "phy" which is actually a repeater.
> 
> [...]

Applied, thanks!

[6/7] arm64: dts: qcom: pm8550b: Add eUSB2 repeater node
      commit: fdaa922585f4474c88fbfaa129f8114f38200660
[7/7] arm64: dts: qcom: sm8550-mtp: Add eUSB2 repeater node
      commit: 749078e38e1ee28357e8fdcd4eac382a465bd1e7

Best regards,
-- 
Bjorn Andersson <andersson@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
