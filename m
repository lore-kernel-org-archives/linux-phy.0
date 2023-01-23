Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2727BC61D97
	for <linux-phy@archiver.kernel.org>; Mon, 23 Jan 2023 14:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX0R93s/t8WVXTqZrhtxAwOjCSXz9mXteSIHRce8F8Y=; b=AzLq2iiTNIUwhE
	bXwFcJ95OAJj0vTMyGusYmJ5aGma6z0gCBDMINTuggKbNOYl9Ub/0pUINjCn2fjiBv0dcknxyB/4t
	4y87lj43whK+OyQpWFnHKYGfcLpcfe514P2jjE4cd55AkO13bpQkavh38EBDLer16xyGIDABrCO49
	ksyR2BvUCkeoLTQwaK1UB19h0d/l0i4B2ZbzlUK7IIWiQfUs0CcvOrIk9AH9AIIulFZ3XMbrGzB3M
	1DelLeFQ/86Mr0n+UriY3YwNKtnh6LhRWqefJqazHNso0az2KKEQFOAEJSovGUbC/6x5WpNLCqT2Y
	iAGbJKEUm5vT4KwAVJCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxSk-00HVfF-Hg; Mon, 23 Jan 2023 14:06:18 +0000
Received: from ams.source.kernel.org ([145.40.68.75])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pJxSg-00HVe5-No
	for linux-phy@lists.infradead.org; Mon, 23 Jan 2023 14:06:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.source.kernel.org (Postfix) with ESMTPS id 1C763B80DAD;
	Mon, 23 Jan 2023 14:06:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C1EF4C4339B;
	Mon, 23 Jan 2023 14:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674482771;
	bh=b4799f3ambcaidRH6yMkeHs72IrDKn2G8XQwYPBreSc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BALzoVSm+ibMV50GLb9YIsysU8sMD7eVqCKeQbCArzCC5BG0ss945pYpuzrmqkqpD
	 fkwoYOsH4Y+2IE3MC/cVSV0zqPqcBsF8HVnTliXy22KodKSTzOQR0EJovo+dUlQ5k1
	 M6JvHsFR+VOm3bjzN/wXbaNz/sb4TueOSYewAnAoKpZbZs/Njs1epjX29woVMKglQ3
	 P6rxe0jO2iBxctZ2VW85DPlMMT3GOaoobBzO8XnnOp6YIw2jLaJpkeLJZmyqiQy7cu
	 76AcKCZi01DqJAbHfCsy5UzMCVgplLh+TnMmnd1ydSWeBYdXmB2XpDagKDCAprDLQ7
	 VtFYzjK5oThdw==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1pJxSb-0003TK-At; Mon, 23 Jan 2023 15:06:09 +0100
Date: Mon, 23 Jan 2023 15:06:09 +0100
From: Johan Hovold <johan@kernel.org>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/3] phy: qcom-qmp-combo: Add config for SM6350
Message-ID: <Y86UUWn027zOgOxg@hovoldconsulting.com>
References: <20230120-sm6350-usbphy-v4-0-4d700a90ba16@fairphone.com>
 <20230120-sm6350-usbphy-v4-2-4d700a90ba16@fairphone.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230120-sm6350-usbphy-v4-2-4d700a90ba16@fairphone.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230123_060614_949610_801D0BD9 
X-CRM114-Status: UNSURE (   9.28  )
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

On Mon, Jan 23, 2023 at 02:29:50PM +0100, Luca Weiss wrote:
> Add the tables and config for the combo phy found on SM6350.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Johan Hovold <johan+linaro@kernel.org>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
