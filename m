Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2270FC4829E
	for <linux-phy@archiver.kernel.org>; Mon, 12 Feb 2024 22:22:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/PKbhAXeg9N3Slg1sYz0lJYI+2VMKdllkGM7IdlrAKo=; b=W/M0ZOA3YyjUaF
	desm5Gp/9J56vNO40cmytP6dXtxgy+HfidkVZNVV/JDoiAG3tI6GEFkK2OupAUscnnns8/TK4yi85
	+GejtDCNbMsThZ3NdVC9mNDKyvI+MwI17VeiLninPmiW7gH0K4ZuuwofopSbenBN9wAhEw3oPUvm3
	MrQF+QCKX0s1Rm0LI6zR3VnWYTz5ycQ5hJM/iAz9dTA+lb2yBE5jwKieIbX0hMlxPFz6X5fGQk+dW
	csGYIRda4i/KW5BAhunTfFoG4fJ+0XKv6StBHa7i+lo7GgxKTHWsfyoYl4WjCHDK1dJoqRvxn38Vv
	PSKQXiR3dvqV8991cwUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZehG-0000000791r-3TSy;
	Mon, 12 Feb 2024 22:22:42 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rZehE-0000000790z-0sfQ
	for linux-phy@lists.infradead.org;
	Mon, 12 Feb 2024 22:22:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 28F2CCE1676;
	Mon, 12 Feb 2024 22:22:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39D63C433C7;
	Mon, 12 Feb 2024 22:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707776554;
	bh=0IusXPQHXi66v5j+nmnkJrxK8Pdqo4Ksu739OrYknrQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Hmgv4A+BeRMvlSjxes5DlqJTRfGXFLA4EQJFae22u5pAp8YsBpncoyUnMRysNiogZ
	 lsX/d5Whk/aBo4JZqiVapBKNf6OuyE3DBHR5NWX1hyAhZZojukhq3f4Lhl6EVPqhFp
	 BbvIqBZ9a3zoU75koZjO8f+ALB8hU4tr2vjFa6uUYNv+A77uLjEfUWdX4qXX63aMZZ
	 xtHMBUsAu8woT1hbyp4mh62luHt6uq+CZVP8NpZkgRayGj+O1KVkBRdwUU5J0SB5yb
	 WutQATu4qOrMHZ9vnIItqGyRbEujU+WBGNHwDBADHex9zQBS67PwiXBxg1FsxYKDuE
	 J22waLRABKb1w==
Date: Mon, 12 Feb 2024 16:22:32 -0600
From: Rob Herring <robh@kernel.org>
To: David Wronek <davidwronek@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Herbert Xu <herbert@gondor.apana.org.au>,
	"David S. Miller" <davem@davemloft.net>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Andy Gross <agross@kernel.org>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-phy@lists.infradead.org,
	~postmarketos/upstreaming@lists.sr.ht,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 2/8] dt-bindings: ufs: qcom: Add SC7180 compatible
 string
Message-ID: <20240212222232.GB2655166-robh@kernel.org>
References: <20240121-sm7125-upstream-v4-0-f7d1212c8ebb@gmail.com>
 <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240121-sm7125-upstream-v4-2-f7d1212c8ebb@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240212_142240_449975_2093E3F8 
X-CRM114-Status: UNSURE (   9.82  )
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

On Sun, Jan 21, 2024 at 05:57:42PM +0100, David Wronek wrote:
> Document the compatible for the UFS found on SC7180.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: David Wronek <davidwronek@gmail.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
>  1 file changed, 2 insertions(+)

Should have been picked up by SCSI/UFS maintainers, but it 
hasn't, so I applied it.

Rob

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
