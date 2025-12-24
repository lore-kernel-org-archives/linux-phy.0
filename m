Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A0A30E74917
	for <linux-phy@archiver.kernel.org>; Wed, 24 Dec 2025 05:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tqhmLNJ4ZtdczgVjNotBrUOhTytVgnAYysbp/+h6jno=; b=LoPFvT5ARdbCQy
	lJbM/jWz1Xl90yQONi7TBHsGAOALDH6wzNH7HVLwCD9CGNUtw9tH8qYdGDUWr3DFZ9sDigmdCqyhl
	+9yInAtccL1nxcyWyqwYZmo9P4RpxQiGhqbaU6bC2BGhBhepXX2NrE6aZW+raY/xGZmXhcRl4CFfl
	voCZGvd6spUFggyQXcRD0+xmOPh0EFxuHJQ5VQw4FmG6Qw0NPvnLYxCluzEIFRrFSDVDKrpEDLLrI
	h1V2mlnqIRRKuny42iNlj3KpLcRu9dhsSl4SxF6hV5roU6PFviSWYq2hwsKNFDaEuV/nqAOX/SRIw
	mDk4xsJiMyXfknjLywvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHQh-0000000GQs5-0hKt;
	Wed, 24 Dec 2025 05:28:59 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vYHQe-0000000GQre-0fUG
	for linux-phy@lists.infradead.org;
	Wed, 24 Dec 2025 05:28:57 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 61B2943741;
	Wed, 24 Dec 2025 05:28:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84A6DC4CEFB;
	Wed, 24 Dec 2025 05:28:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766554135;
	bh=C/GnFv5Pg+zL30Vai7m1dAM/fuNNOsDmUVTl2nzGmnw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bqfPidJQ/miNSrvls/TdR7kU/lfIuBMklmL10AS7LDhpmL3gBNFmwxacDsdB+GUA2
	 vFSdukiXuF5DEI14JKyOKdXPfKcwqC+b6X82OwNGaVEk7Xxw/7AHyVC0bddeMFqnfj
	 CVjUoFmMxOOfqfe8H2vyhLrbGxk7u+FqgM8D28+DYj3kWxK5idnuoad//uZxkEQ2SK
	 JERX6FjcM1IzxmzThOptRHAwlUS+fl1bocqPBhfWm4zP0B45GEHLVrAwCpugABEriT
	 rZpzTQCa7xyILtgv+UrjNkIQ8ySIpUSoOs/dVk9kelHyxiPtTqoDimKImgSVxQPz0T
	 SdFeLY6uaNHSQ==
Date: Wed, 24 Dec 2025 10:58:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Abel Vesa <abelvesa@kernel.org>, Pengyu Luo <mitltlatltl@gmail.com>,
	Johan Hovold <johan+linaro@kernel.org>,
	Luca Weiss <luca.weiss@fairphone.com>,
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
Message-ID: <aUt6E-AVVVkmo6E5@vaman>
References: <20251219173108.2119296-1-krishna.kurapati@oss.qualcomm.com>
 <20251219173108.2119296-2-krishna.kurapati@oss.qualcomm.com>
 <aUqjG4pVXWN3H88N@vaman>
 <bb775051-8635-4e2d-a1f9-46d6f0e6bc15@kernel.org>
 <aUq51TxXwiJE2DWb@vaman>
 <niverh5ydbah6axshbtop56wjsoluen64anojp3nvizcn4bthr@h4yickq6gtea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <niverh5ydbah6axshbtop56wjsoluen64anojp3nvizcn4bthr@h4yickq6gtea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251223_212856_239216_F1248C04 
X-CRM114-Status: GOOD (  18.32  )
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

On 23-12-25, 21:16, Dmitry Baryshkov wrote:
> On Tue, Dec 23, 2025 at 09:18:37PM +0530, Vinod Koul wrote:
> > On 23-12-25, 15:16, Krzysztof Kozlowski wrote:
> > > On 23/12/2025 15:11, Vinod Koul wrote:
> > > > On 19-12-25, 23:01, Krishna Kurapati wrote:
> > > >> Add squelch detect parameter update for synopsys eusb2 repeater. The
> > > >> values (indicated in basis-points) depict a percentage change with
> > > >> respect to the nominal value.
> > > >>
> > > >> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> > > >> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> > > >> ---
> > > >>  .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++++++
> > > >>  1 file changed, 8 insertions(+)
> > > >>
> > > >> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > >> index 5bf0d6c9c025..f2afcf0e986a 100644
> > > >> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > >> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
> > > >> @@ -59,6 +59,14 @@ properties:
> > > >>      minimum: 0
> > > >>      maximum: 7
> > > >>  
> > > >> +  qcom,squelch-detector-bp:
> > > >> +    description:
> > > >> +      This adjusts the voltage level for the threshold used to detect valid
> > > >> +      high-speed data.
> > > >> +    minimum: -6000
> > > > 
> > > > 6000Volts, mV, can you please document the units?
> > > 
> > > 
> > > Code is correct, the '-bp' is the unit here. Unless the suffix was
> > > chosen incorrectly?
> > 
> > I was hoping it will be commented in the description here.
> > For my reference, what is bp and where is it documented ?
> 
> Base points, 0.01%

Thanks Dmitry, where is this documented for people who dont know

-- 
~Vinod

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
