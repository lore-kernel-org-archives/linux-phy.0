Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5648B606A88C
	for <linux-phy@archiver.kernel.org>; Thu, 12 Nov 2026 08:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=w4muOOzM;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=VOOEtx5x
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=oXfQHbLuPzv31AuAqcwsYFbiyImGCGRbvJI2xqvX4pU=; b=w4muOOzM+U+pl2mkzNGDZxpHt1
	iWbn5B4R6di6/lzEY6hGn05LTRORVZEpXAdH7xmg9xsdWjyTo9lZwVA5GfVGygLDuS+Rl2dW9P7B7
	Bm4FTDPmL30TT+K7XKsx2K7vnsINFDv+iZ+Dfp0/PAnjwpUffdaBenFolqlaS3GxljAroUsryP4bL
	zk6iabGFGj7HP3Ay/8O457ZztDbEvVaDo1zF48dPtNziC+HZeRx2W4rg30PmioLqWqmpUSAo1XWS/
	zKi50NLWOG0RLa4li9t2b7M8fGdEtF/TOeZtiJl/VrqLkGXd+1xyow/olThPOccaPc+hgjHzCu5fQ
	HsUtkl7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ8c-000000096QH-2W7M;
	Thu, 12 Nov 2026 08:26:31 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ7w-000000096HK-3Owh
	for linux-phy@lists.infradead.org;
	Thu, 12 Nov 2026 08:25:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id F2F36455E4;
	Thu, 12 Nov 2026 08:25:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2BB231F00A05;
	Thu, 12 Nov 2026 08:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794471947;
	bh=ySU9YsqIwR1ufjZHqp9vrCefUh/LOd39PBoHEAn2kkI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=VOOEtx5x34WBl5oJ7iR0eG9TcH7mIJktKsS/owNQlfIvyLrDgGWZ3eoQ6FsIHSFtn
	 AWDulVn5ve71+LDdapnT2caitCYpe9K6OKMLUKP10PH04z7BDPQjbErTCNxDbkyw6l
	 +IF/af2uCVdW9KcXQIJ1e8QvwEqK34A+jRjN1aMAgq6U8xEiMfjnqOPcmcJwX5NrMP
	 FcUoC0tidGUAVN1HacKhv/x/M5h2f7v9N+V383zXD4UhiQVW8Nf9g+eqMvgM2lGZVb
	 iSwjNjlwecVnMv9wUnOSjgE+geq+6mONbaDALcQsAOU7tEOJmnrlA6CakqYoIDuvTT
	 TvdS0SKRqkFnQ==
Date: Thu, 12 Nov 2026 13:55:43 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thinh Nguyen <Thinh.Nguyen@synopsys.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	linux-usb@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/5] include: linux: phy: Add phy attribute "type" and
 associated helpers
Message-ID: <avV4B4g-NWtZbLuX@parshuram>
References: <20260913-eusb2-interrupt-v8-v8-0-0f505b9c394b@oss.qualcomm.com>
 <20260913-eusb2-interrupt-v8-v8-2-0f505b9c394b@oss.qualcomm.com>
 <asNji2_GUda8x245@parshuram>
 <3a3cf540-816f-41a3-b31d-2902e7f4cf01@oss.qualcomm.com>
 <033c8432-4a03-4f38-b0a3-28f5d551b0ef@oss.qualcomm.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <033c8432-4a03-4f38-b0a3-28f5d551b0ef@oss.qualcomm.com>
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

On 27-10-26, 13:37, Krishna Kurapati wrote:
> 
> 
> On 10/9/2026 10:29 PM, Krishna Kurapati wrote:
> > 
> > 
> > On 10/5/2026 2:14 PM, Vinod Koul wrote:
> > > On 13-09-26, 20:10, Krishna Kurapati wrote:
> > > > In cases like USB High-speed phys which can be either USB2 or
> > > > EUSB2, it is
> > > > required to know the type of phy (rather than the operating
> > > > mode) because
> > > > DP and DM interrupt lines need to be configured differently for each of
> > > > them.
> > > 
> > > Does the controller care? In preceding patch you defined the EUSB2 in dt
> > > type, so this describes the hardware. So phy knows it is usb or eusb...
> > > > 
> > 
> > Controller is agnostic of whether the phy is usb2 or eusb2. Phy does now
> > its type, but it needs to communicate the same to controller.
> > 
> > > > Add support to cache the PHY_TYPE and add the following helpers:
> > > > 
> > > > - phy_set_type() for the phy drivers (like m31_eusb2 or snps-eusb2) to
> > > > declare what type of PHY they are (in this case PHY_TYPE_EUSB2).
> > > > 
> > > > - phy_get_type() for the consumers (like USB controllers) to query the
> > > > type of phy connected to them.
> > > 
> > > I am not convinced that this is the way to go... Driver already knows
> > > the type and should use it...
> > > we alreayd have mode, i am inclined to not say yes to adding type here
> > > 
> > 
> > "Mode" attribute describes the current operating scenario of the phy
> > (device mode, host mode, high speed, super speed etc.,). But it doesn't
> > describe the type of hardware and hence a new attribute.

Not really. A combo phy can be usb/type c and we do set that mode...

> > 
> 
> Vinod, can you please let know if you are fine with this approach. If yes, I
> will send v9 rebased on top of phy-next.

I am not convinced that this is the way to go..

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
