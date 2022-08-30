Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 782FAECAAD5
	for <linux-phy@archiver.kernel.org>; Tue, 30 Aug 2022 05:31:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z4vnRbAA08i4aF24Cp8Na0Pw86HCDs+FznxJOsjOCrQ=; b=T6YuQuZhtia3QE
	AgrBz/LvcSh7NNkx1DF4qOPqIUAiUunVeUoWRDfFmeJzW0w24twsl8Mxl5WwmBD2ldx2ZfvE8d1S2
	iZBYId6Z3ZWBF1kfpH8/ePEpa1suc3XJmrVQtWNZ35C+lyCrz5YMLpOF5bIYdg8FwRvp7FEkMtTJQ
	VUns/zMfhNUMjnUx3Lq4gHNshwWA7Tabi1ejPvwHk0r08Ab6zafeJzuSNYJa8taxhWlOKSpMBpf+p
	f+RO3UlBQUs5W8TNZt1QgpklUg6BKW8aIyx2IsDFKvOcp7R0jIlcmKqOrfyKbMovpBpbJ+WxsGCEV
	0aX8ivtKNpG/lhfHne9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStqj-00EBk1-RV; Tue, 30 Aug 2022 05:31:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oStqh-00EBjP-TE
	for linux-phy@lists.infradead.org; Tue, 30 Aug 2022 05:31:45 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 452BD61272;
	Tue, 30 Aug 2022 05:31:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E8E09C433D7;
	Tue, 30 Aug 2022 05:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661837502;
	bh=Cx//WqmvDiWDeKFb5xhwU9eZb4oNMLT8lWSoQd+h7DM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qG2/my20lNiK0+vesCAaDiUl1ZWIEc8nF3w9EzgBlBb1bqT7gEQ6csv+MVKxwdsz5
	 1yMAgeKOR794G8nxXrWuTKzfxwjR7KZjd4d+qNm7TRDEYkpHiOp+W38Pi/rCKUOGdn
	 X/2octNE70WxoSymCj/fU2N9KJGcjn+ie1IDSD1OAogTVYHkvsYPl4leUgux3eBroR
	 AzReZNWsan1phPkH4czWlm6bLV/j0c+DyiMMqYVn+9xwHal67rRmviO84+d4/pEylh
	 ewazfk/vauHRP2AuCFkE1TOmlMgU+Z1xhoZQkm41VVqwnuDKWWWBG1KhpaW1cxM7m2
	 Ww8iwP33iP96g==
Date: Tue, 30 Aug 2022 11:01:38 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Kishon Vijay Abraham I <kishon@ti.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/5] phy: qcom: edp: Introduce SC8280XP support
Message-ID: <Yw2gut71lb8h2lLb@matsya>
References: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_223143_998718_2CD2EF30 
X-CRM114-Status: UNSURE (   6.42  )
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

On 09-08-22, 21:07, Bjorn Andersson wrote:
> What the subject says.

:-)


Applied, thanks

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
