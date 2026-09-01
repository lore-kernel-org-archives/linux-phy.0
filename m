Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C7B72C61DD3
	for <linux-phy@archiver.kernel.org>; Tue,  1 Sep 2026 13:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Subject:Cc:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rdIooPzEGUZPwT181dgb7Uk4QwqtY6gpw31fmoTkMXk=; b=2yMU7odHbLbC/R
	mEqTDgtZLYrbbEgilX0jVk5PntxxhmqJZzZgsZjErM8IjxruPX+t57hj2NJweUJgi215eyUZZ1of0
	JpHifsKOgKUbjiwxtAbIbzsmLmIJ1g9j/A4U1b0GyQR4DnQdYQsJJCwbOr6aNbpLCDR/1AoDm646U
	RmFbXrdMu1A+krLLq5FqDTsG1YH+NvqRba+Lw5Wia6qd8zIcnfAzGPQUqz4hpg/fN8BU5IEkAj83q
	pGsmMJNQjUzUQJ8Hr3JYrFCdveLG1jeWdcV3QQbEhujnJsKCAgqEjgqUFtD0szgi9c+oGIXzJSIEX
	JT9P/WnzFkZOAIp5IrGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OGs-0000000CA8H-27fb;
	Tue, 01 Sep 2026 13:11:26 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1OGq-0000000CA6k-0Idw
	for linux-phy@lists.infradead.org;
	Tue, 01 Sep 2026 13:11:25 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-49cca4ffdcfso6392405e9.0
        for <linux-phy@lists.infradead.org>; Tue, 01 Sep 2026 06:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788268282; x=1788873082; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=W4WQe8WxOJvjm3sLRvwhf9J7T9KlfMScAPN+0OUz8OY=;
        b=QMs2afNqZFhvOXQSZU6JD6UQaUDGquohitJxk1VRa2VcmAZqjyVo1OrW2/hHQDmO+H
         hERytUBokb5UXkAUbhQjMrrTHRqFx94zob6f3LTO9ClACoZw8+DqCLSR9VG8Sr3jWnOd
         jhY7QrQwrm8/hIJF9zHACkMgtmeSiHO+BzE/SGMeMvCLzAfbJO5+0MP2s9ZrdwoXEHum
         f23RI/ihOcvjeR+qGEc5Wk3nlKcFzmhlbU1wjsz0/YhUBBTTyoXx7vQr/nL6shRb5qwy
         0cKmqHWMVnLV0TvKhV/oY5JmcVlDlQwBWRv1pi58TJXiI6c/Mp5Hhgk9oMhHC35+knDe
         0+0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788268282; x=1788873082;
        h=in-reply-to:content-disposition:content-type:mime-version
         :references:subject:cc:to:from:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=W4WQe8WxOJvjm3sLRvwhf9J7T9KlfMScAPN+0OUz8OY=;
        b=n5n1nGfJl1FFPPHtonimHxSZdesZAEKKrNYEhqZ7syKXEfZ/HsSmfH/HqQvubYid2V
         r/zh6CvqWchOzVKb37SesOm95FDHpcJN1tColOpyBhMhA5ZhIzHPpPzJ8szFR/HmALKr
         5cciMcpEDGxbl9Wf6Lq/LwPyitjCLl9vF/HJ45mTrUPP9scSNT6cTO1sK4T3d9GJBhml
         RcEE/L8TyVng9x67XogmaCvHjZGjIKZwimxwo62tDWD6s54uIuyiTsfL61ZwemXaqDl9
         S0qmBWYFAoXAJ6f6EkNtGMeM7jIjT08m/yr7Uohf0lJdgyICP4TSZeuBt9ap53zQj81d
         KZJg==
X-Forwarded-Encrypted: i=1; AHgh+Rrf742JNaa+0HptDnjiPICubzA+Vi1x2nbeKQSw853al61zg1d0Q8mEaaZmrO+Yai1sWK+buDLMdew=@lists.infradead.org
X-Gm-Message-State: AFuF++mssFLfptOoUuGTQbzZZ5N8McYCWQzc0DSAXVW7opRNEGK+/Q3I
	FOl9vhNtPcnYw7l4lmBkIz8WARcVEM0LXWgngsYubSK8rd7bByJtOws7
X-Gm-Gg: AR+sD13Fl75hv5jMMaQ2XhYaWMBxLcEsSugulF+j+XoKjVsyB541DmrWorSF/oqpOUD
	4cA5iGuK2YqLuDS48LKYZfwQshUbg0a2ktNY/1oyrZbSvf2r9U69kPb8g8njTdsAJNz2Vr1kQvw
	W46gbHnJfcf6SGge75UDGZxjv5izDXbxzPNCDFmzdg+QMaTuM+eIND8EsNf18ABzXZhA2S/RMTU
	PXBGZK+rHxUJzuEq0qd5Tc9bP8tesfBHuZHudybD+9W7xeUK+9O7MyIzuPm6PQKXwEl0x3K6ntd
	Hq0WYcplehCcdgIhf/s9TQisb04eBOXPP8OwKjifdVX2rPOiKpZ/UcZBZKh2qYgn7m143sgCi6K
	0MmDUOj7TuHZycHDomw6TVOURvVdRO+OU3NnUPGduvYPPtmRJzqPrzQO5OVGnAS0JCzsOGocTJK
	0Fz3Yq4Lot0ZBFLGFPV+0Nv/it2YhRIvUOZ4k4YeW1UMQHTD2uxyTt7vL/aXQX6qX9nnZJTPb8t
	S/EDg763hIwfPaF5lZ1X9hhUXeYU/sPMb4hJ7SwM2zpGQ==
X-Received: by 2002:a05:600c:3511:b0:499:adb4:a922 with SMTP id 5b1f17b1804b1-49b91c4bab5mr387735445e9.12.1788268282047;
        Tue, 01 Sep 2026 06:11:22 -0700 (PDT)
Received: from Ansuel-XPS. (host-79-26-252-140.retail.telecomitalia.it. [79.26.252.140])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cdce1a3fesm70391065e9.12.2026.09.01.06.11.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Sep 2026 06:11:21 -0700 (PDT)
Message-ID: <6a96cef9.1f1211b9.23c693.9e1e@mx.google.com>
X-Google-Original-Message-ID: <apbO8hHBw7bMvVxL@Ansuel-XPS.>
Date: Tue, 1 Sep 2026 15:11:14 +0200
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: phy: airoha: Document support for
 AN7583 Gen3 PCIe PHY
References: <20260827122127.18874-1-ansuelsmth@gmail.com>
 <20260827122127.18874-2-ansuelsmth@gmail.com>
 <20260831-elastic-turquoise-puma-f032fc@quoll>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260831-elastic-turquoise-puma-f032fc@quoll>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_061124_126912_8DCBF5E1 
X-CRM114-Status: GOOD (  16.85  )
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

On Mon, Aug 31, 2026 at 08:51:46AM +0200, Krzysztof Kozlowski wrote:
> On Thu, Aug 27, 2026 at 02:21:20PM +0200, Christian Marangi wrote:
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/phy/phy.h>
> > +
> > +    phy@1fc7f000 {
> > +        compatible = "airoha,an7583-pcie-gen3-phy";
> > +        reg = <0x1fc7f000 0xfff>,
> > +              <0x1fc7e000 0xfff>,
> 
> Sashiko has a valid point here.
> 
> This should reflect real hardware, not current driver. It is very, very
> unlikely that hardware designers designed a block of 0xfff size or 0x4
>

Hi for 0xfff yes the block is 0x1000 but I was reporting how it was defined
in the original DTS. For the 0x4 is for real a single register for that
usage. Documentation is scarce for that single block but this also reflect
the same implementation used on EN7581. I updated the example to address
the strange block of 0xfff.
 
> > +              <0x1fc30044 0x4>,
> > +              <0x1fc35030 0x4>;
> 

-- 
	Ansuel

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
