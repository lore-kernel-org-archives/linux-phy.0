Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DB71D0E6DF
	for <linux-phy@archiver.kernel.org>; Mon, 21 Oct 2024 10:16:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RG3a/alKqxOw82APtikj0rQ8e2A3tbh+qfjCBzqwgpo=; b=MJcPBrbJ8fP7Bz
	a5O8fb38cR/cfUXgn59RGwm+waQwUXOQb/jZ999T4K+36umL90CeQo2qPgYw5tuXYtS73ZJFxsdTK
	wGTAXikIA3QOehbcw+Q/Mh0NJouJK4HA4fDXa0ahKwTvG+dYRLBr9+hG937O8FI8xP3lwhCNz9PNm
	fL3i/nFVEdM7Pspc+rLofcn6GC+/8KZIrSxPhCCVj9TuzjQUfhZ0Bywqg2SSFhfd/UNczto8hd40o
	IqJq7eN8lBBIDXNx5Yq+9uSz27mVLdFjZ/z35bMRVTGPfPCn3+cDIukxOsI2SbDJvmNTOgNNoUtKE
	sJ6L3jRlhYozqI86HxvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pSd-00000006rDs-0Fey;
	Mon, 21 Oct 2024 10:16:27 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2pIn-00000006pHE-0vn3
	for linux-phy@lists.infradead.org;
	Mon, 21 Oct 2024 10:06:18 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-6e38fa1f82fso39812447b3.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Oct 2024 03:06:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729505175; x=1730109975; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=GsmefuCLy3782StxBxP88Vmmv8aDiOgUgCUBIcd2Ybk=;
        b=NKNspswtxFxJyD6MoajNg2M1Rf6dXzUAfLaI5AP8m4i7ZwuXsx1y3V7KSGxSa/4pVO
         gboAoewTrxgXXF0kciApDnpFVbmDdbVyDpNh+l8/e94DHzhcUUus6tu0UfE0l1S7oIE8
         oiEt0q6IK57hvaojph2wJxz0GP44jBLyNvVS3h+6mD5LDYKUd/oY+2UYhTBaXPaLVMGb
         8ddpipM/3rSp5rp6S9uq00igzeca+3rI8Ve1ag5AOvm1jYXU+0La85YWqAV0mk1qk7mP
         BcyMLnKNv5YDLTve0qphJDnUELIVGn2TIlxP4de+jLz71xJT6TQWCxgr1yiYRlBxEqSy
         Dyug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729505175; x=1730109975;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GsmefuCLy3782StxBxP88Vmmv8aDiOgUgCUBIcd2Ybk=;
        b=BjtX/EjYxti+2JEKN90RxNcI73OhIy9GgehngltLkmveBq/5NJ/ScNNWDIYsmq6wYE
         vfSwtT78OvvYogUbxC3dF/DLL4EDlOraQb4knX6pFQABQXZq6TU3ssnYidKZtt3zX7IH
         69LHO5/Psi07Thc6JW6mBaSqOYIbQCwAWy8GABLJC6fjg6oaYwl5GE8RsDorcIo84MEb
         Xs2vHWQdvbGhfieRza/x6n9nrT51smgPP8hPTNFyXaxt7jGTN2vmZfCIy8KMI35wmsF7
         EkR7n1PGiypFDqjFXvOPJkFpWDOlsyG+iY/PaQzjzA1ebMfAEHqj8URFnUucANMTyjXQ
         iGCw==
X-Forwarded-Encrypted: i=1; AJvYcCXzVWUoCSBl5CTkBULnjZKylXq5ZIp3t7z6Wyb099oJ++oc1WZkntOD6l2mqxK6pzJmsDCd2+Hkhdw=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy7swj47cun1BTsmcgJPvkwG5++qQyGWwCi4sSABoyB1DWR8pLh
	gaL9yWJfivGzQLqs4oPkNsbo3E+fhQ/S64GwdyN6FBEB0lXtSKUvmWOW6p0AP5DtCGmrOr3PoU+
	MVoqUvDU5aevaYpbVc8bnx1Zgf8LQnm6n82U5Ti1X6v+kivvCBQE=
X-Google-Smtp-Source: AGHT+IGOSTY2exEdjJUwtklxk91bFNLum+uKyLKxuCCBfJbzs2BqXrT/kAOjREMkniMhG0JWTTfDut+gz1PbEoQ0YQ0=
X-Received: by 2002:a05:690c:87:b0:6e3:29ae:a3a5 with SMTP id
 00721157ae682-6e5bfd4f8c6mr101900967b3.34.1729505175322; Mon, 21 Oct 2024
 03:06:15 -0700 (PDT)
MIME-Version: 1.0
References: <20241019-sar2130p-phys-v1-0-bf06fcea2421@linaro.org>
 <20241019-sar2130p-phys-v1-1-bf06fcea2421@linaro.org> <ZxYEV-hS9NhlnhYZ@hovoldconsulting.com>
In-Reply-To: <ZxYEV-hS9NhlnhYZ@hovoldconsulting.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:06:08 +0300
Message-ID: <CAA8EJpo++Oo2CfG3E56piuyFW4yBSC1qzcFwJMV2TizcrxZN5g@mail.gmail.com>
Subject: Re: [PATCH 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb32dp: Add
 SAR2130P compatible
To: Johan Hovold <johan@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_030617_293955_EF178432 
X-CRM114-Status: UNSURE (   7.73  )
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

On Mon, 21 Oct 2024 at 10:35, Johan Hovold <johan@kernel.org> wrote:
>
> On Sat, Oct 19, 2024 at 06:44:50PM +0300, Dmitry Baryshkov wrote:
> > Document compatible for the USB+DP Combo PHY on SAR2130P platform.
>
> Looks like you got the patch prefix wrong (it should include 'usb43dp').

Right...


-- 
With best wishes
Dmitry

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
