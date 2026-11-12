Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2029B606A8AC
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 12:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iW7LCzSa;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=eZxqeL4J
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=XtDcQJJ/LhIy7hMRa9eYAJ8WuA9LTmGNrqBxKhBQBzY=; b=iW7LCzSasmxaM9rk9gaHgjFuCv
	ccOaT8DHq34Nw1K04nDQp2E/JLozkL5LNqzTGAKVIXO3Un8Vg9ThjfClMqCTzGX64/P0iQnt9v8O+
	ZAa9UpCQhLSdf1tFfEkG6uWyJs3/qhH+xZPqZTzgZOO2zvQrvszkzezccGIdh19hmdzbQXat507bc
	cXXn4c0aQPBVdBKUT/TNdLzUH//yYk4Vaqi3WOl2M6G+GvFxuZhVfABh0bd0VP+RMLkMZb0Ob9J9N
	jtRwDIBgjLfAljdQyp9L8hyLydDF/7iDGcsoNgrzX4GrAalyGK8Vn8cUzPy4ZdfuHTE8k46iPtQDw
	18T/Xn7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUJO-00000009w5y-3WvZ;
	Thu, 12 Nov 2026 12:53:54 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUJJ-00000009w2O-3gJm
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 12:53:51 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 06660404FD;
	Thu, 12 Nov 2026 12:53:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A5E311F00A05;
	Thu, 12 Nov 2026 12:53:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794488028;
	bh=2SfI1Ism+5ilI2yQhrJEphs77J0IHLC7svD8evqdJ+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=eZxqeL4JRZct0SGU6JGFkA7wIy5CX6amIYnbY7wk2/pQhUkZZ0URZ/ajj+ks6uW+m
	 Vc0UICK9M4JGuQANKuekkGWjGw/Y1lLfUV0DIL6/7rMMczGwZcioHRENshAOk83XlT
	 qhc2R5eGXa2ZPEdBagY27MDxRPpBbqZknCs/FSfHuemJFvmM7LQ66kMUAJBw8w6kFa
	 Tfd+rrc27i2NRJfnIrkYLNVUeYhejIXCKUuFqQdnMLo7DmjftabuZZyMffPFVI2AYA
	 NUJvduI6tPwBhx3AZVPlnAnxSc1Hi5wg8Wr1dpMQw0KTZIt8A8we5s4Wx2BQeVOCJx
	 LMcNKV/PrCXhw==
Date: Thu, 12 Nov 2026 06:53:46 -0600
From: Rob Herring <robh@kernel.org>
To: Vinod Koul <vkoul@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Wesley Cheng <quic_wcheng@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] dt-bindings: phy: qcom: Relax required supplies
Message-ID: <20261112125346.GA3821108-robh@kernel.org>
References: <20261021022446.3619435-1-robh@kernel.org>
 <avWbmsjkYo2LMJKs@parshuram>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <avWbmsjkYo2LMJKs@parshuram>
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

+Konrad

On Thu, Nov 12, 2026 at 04:27:30PM +0530, Vinod Koul wrote:
> On 20-10-26, 21:24, Rob Herring (Arm) wrote:
> > For the QUSB2 PHY binding, keep the three regulator supplies required
> > except for legacy IPQ6018 nodes that do not describe the board rails.
> > 
> > This relaxes the requirements for the IPQ5210 as well as if it is
> > compatible with IPQ6018, then it shouldn't have more required
> > properties either.
> 
> Hey Rob,
> 
> This fails for phy/next I see vdd-supply has been moved around..

The change in question[1] should not be applied until the .dts changes 
in the series are applied. It introduces a bunch of warnings. Can the
QCom folks stop doing that! Coordinate applying the series or take 
the binding and dts changes in 1 tree. Given the patch series is 2+ 
months old, I'd be surprised if the rest gets applied.

This patch OTOH fixes warnings.

Rob


[1] https://lore.kernel.org/all/qusb2phy-v2-1-4c3f980a4560@oss.qualcomm.com

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
