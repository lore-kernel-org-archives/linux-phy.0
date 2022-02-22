Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F8FEC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 22 Feb 2022 05:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fBd3lZdclS+drwGk+I6/R0y7Fa/37W2hq2aLXDiXgXc=; b=uLw1xAG292njtC
	p/+3dipiiXKY/cRL1RCjukXksXUXiJQfyNMyRvPVuhikW8oDISHfj5WB2x8/pWsQRUknplY+MxWnI
	65BVpH6zS62364v3Y8swc4PbF/1QGu3PbY/sZ5fPb4fzDOeL2BYaBYEqoAUbSUksbV286+ak+v3cu
	Rnqu3z5k9FPsG5DtxNXA3ZHXY5o5Ux3Jp314YIxg/jp1OMcxUoLzOH6JNaSdT9sWVqIor/tHJS8/W
	GLN7SX48xj7wj1PDpboRcMBYf9HWpe9Z5gsL9ljc7V5Uk3mUpIi3ZFCX+Y4FUsqdQIvBJWuaYqMxL
	7uaL8W1mFd/mqAZmzWMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMNdL-0080bI-DL; Tue, 22 Feb 2022 05:22:43 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMNdI-0080aW-AP
 for linux-phy@lists.infradead.org; Tue, 22 Feb 2022 05:22:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id D62AEB8185C;
 Tue, 22 Feb 2022 05:22:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 27A35C340EB;
 Tue, 22 Feb 2022 05:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645507357;
 bh=KCTcj5TseEAUcvGzo4Wj0gTwBw0tNSSMLCB6TBjzO/o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YqfBCdQOkblPXZ0t5+y1SjzzAmAVZVBfCOTxiJf/NnYx0y5GvX6M/ehX0FfBLcx4q
 FuYsgSjAnhdtAsrz0AmhKXDaZAavMCrlofIA8jLaDlJNXXTec4f5SCq3gquAHD+gHi
 TH9S1846C1rPAgxCUYSdLQFonpTgfuAwRjBvoYQH0Zog5bfZKtSh5/cYBPnaQLUm9I
 JdS9iWejT/tePeno6otX6673OFB1pNZqW/HV91nxiDxZv8ic5cru1DjijVQyHRGnUX
 z9nCp2CdZk3QX+1m+uZHyGfddMHFtCKOGPJEyCMRdrzvEHFqinQIzg4SrE9fqbu7SV
 GC11hcpIgnzMw==
Date: Tue, 22 Feb 2022 10:52:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Roger Quadros <rogerq@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: update Roger Quadros email
Message-ID: <YhRzGbSHLrDwxxSm@matsya>
References: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220221100701.48593-1-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_212240_547823_A483AE8D 
X-CRM114-Status: GOOD (  11.09  )
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

On 21-02-22, 11:07, Krzysztof Kozlowski wrote:
> Emails to Roger Quadros TI account bounce with:
>   550 Invalid recipient <rogerq@ti.com> (#5.1.1)
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> 
> ---
> 
> Roger,
> You should also add a mailmap entry for your inactive emails.
> 
> Best regards,
> Krzysztof
> ---
>  .../devicetree/bindings/mfd/ti,j721e-system-controller.yaml     | 2 +-
>  Documentation/devicetree/bindings/phy/ti,omap-usb2.yaml         | 2 +-

Acked-By: Vinod Koul <vkoul@kernel.org>

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
