Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6B37606A31E
	for <linux-phy@archiver.kernel.org>; Fri, 27 Nov 2026 18:29:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=W28k559I;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=arndb.de header.i=@arndb.de header.a=rsa-sha256 header.s=fm3 header.b=n0ONqiIM;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm3 header.b=BVjtbpuQ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=HR7/War/TOgdVZJ3hwXCfARu88OThdyWGMf5e4tNTVM=; b=W28k559I9KYWiFdY87N+T4Mn1P
	qVAB+XfW7HbqMwljsS3KjWWiRm1V9sep+hIbipE8jrmuwv9faYNJj9xpjWoHIJyDrAz4MAgseijAn
	SA63mloRgXuzQfrHR4s2PBkpBndnaOxakFKfBzpYODcvpILpvPoohXltzDKrtyMpIcCsNcjFMVTox
	k9BK6CTxs2Bk1ZWWqYma0nMWKFDUvQA4k1rZNIDmnpGHdafYqwTff2Lc87E0SvMm0krqurzl9sEiH
	mDtO80iByuytGKfVpHB6zG49Bz5slIQsdudShbLMjagVgpVp5IqHHlYQAVOy8E7MjGaruSWoKUEgQ
	786QuKbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX0hV-0000000HPys-25Fz;
	Fri, 27 Nov 2026 18:29:37 +0000
Received: from fhigh-a2-smtp.messagingengine.com ([103.168.172.153])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX0hS-0000000HPxe-1ANF
	for linux-phy@lists.infradead.org;
	Fri, 27 Nov 2026 18:29:36 +0000
Received: from ams-compute-02.internal (ams-compute-02.internal [10.64.2.62])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 9DC781400390
	for <linux-phy@lists.infradead.org>; Fri, 27 Nov 2026 13:29:29 -0500 (EST)
Received: from ams-imap-03 ([10.64.2.23])
  by ams-compute-02.internal (MEProxy); Fri, 27 Nov 2026 13:29:29 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1795804165;
	 x=1795890565; bh=NFYP7Mnhk+gbYwzYQNwIrmmMssv+PF1qkliHdpdYKQw=; b=
	n0ONqiIMPwI40ZRgqs85MqiH6u6YZQkhH8mIgE4F8wjiMFSZczjdaOurOWDkkKjD
	3a43vHBsJyX8NBHYJHlVp+H18LUVEYVHPuWoDMLIXwQzstg4AQPu56KeQvSSM/4v
	UutKeEkRPR8gekJiIHfKYb8pQk5mtBS3IWx6px5LO63d8PeMFuLqTwpUmBh+1ZsV
	CCf6bUovS03ZaZT1PzfpXM2yQ3vlNY4s2UZ9dxisYeCP1902MQPMAXTdoloawrQs
	lim5H7IxZjM/ajISgPmJJppye/8VXOJI9VMkz91d4a6ue2Bn4c7N8e6C+koxtxx8
	/GZxBhijEmuchF98/nbX+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1795804165; x=
	1795890565; bh=NFYP7Mnhk+gbYwzYQNwIrmmMssv+PF1qkliHdpdYKQw=; b=B
	VjtbpuQlJLg9pveOD5oivpL2S/pz7E0qBEw7M5u4DY1HSt8BXmMkHM+a0sZprHZs
	riTuvtSTirqEVyIvM6DaG6XZgrQBgebIBvJrOv/XESeaWH8KW3HgtIBPhArJexUS
	+nYYgX9YjELNIhpuU+ezxCoU2aZkkEJ2r5pKIFSQjKu3yRECajHhrtHnGEvctvxg
	MOfwMa2ayGkqFCP7nq0wRnXidnlVJMC2suHVVwGrUwWQsQsmkadl/cWWCLt8aWUF
	ZVGki8d10buPbl0x5rpYC4iyTZsbeh+aVpZoFNIZbG6COmMLMdZ7Og0ShBb/vMy+
	/jPmDpA/P1wHyovYy3xrQ==
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=sign d=arndb.de a=rsa-sha256;
DKIM2-Signature: i=1; m=1; t=1795804165; d=arndb.de;
	mf=PGFybmRAYXJuZGIuZGU+;
	rt=PGxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnPg==;
	s=fm3:rsa-sha256:eo3FVaGqIIZWjjvewAzAiIk0enk5vhPesG1pXTI80ZSmfnE
	qCnrIoksqqrXC+tJqEMIR5ABAE4iZXETmFWDToTkZTXvW5fOUIImRfTSGDxJhIlA
	n2/rXaqWFMco0UVW/oxN+VUYcqezRkEgVkrxA/9Pzp2WAqFjHWbP38s96u5FY0ii
	k5ssfGfrhidbtqu8S885mITJ0FoUKwef94RDRCA2yAWT2v0VOIX0VnEQVO++fmw1
	F9TEiSPAytDq2k7kc/D5BmrSFLJu1y1WMo05UruHt25xehLF7l7a6hoUes/L0T4v
	C9By1UutT9UIGpJ2scCrwNuS+dtgh9hshPQGc8A==;
X-DKIM2-Info: draft=ietf-dkim-dkim2-spec-09;
	repo=github.com/dkim2wg/interop; date=2026-11-03; sw=lmtpprox;
	action=mi-m=1; hc=12;
	hn=cc,content-transfer-encoding,content-type,date,feedback-id,
	from,in-reply-to,message-id,mime-version,references,subject,to;
Message-Instance: m=1; h=sha256:FS9+xTMbX/QFa04FzYFBpGpWbFSjVsaaN82lemGq5pI=:bYIDvSgwaoejMxjJ+spE8S6D9q5RDTrLXwcidEC/JwI=;
X-ME-Sender: <xms:AMwJa6zFlc4qCkpE8mMRNlw9YQFSVtNIOXdi7TkuL3InvB2Yx3QDHA>
    <xme:AMwJaxGGfMND0M0hlCVTTD5QDBhuA_BvKZeaEPcjy4CddfXH4pyj5547AxOSTbBKo
    wmEfCguIsu88hYjqUiNXfOURqeEbsbdEYGpq6rSlXbiXVVMED9CkwO4>
X-ME-Proxy-Cause: dmFkZTGxlAZtYZTqWhyUt4AgPgpIrvLLPUzMzv4nN0DJixhlQGowoxwHGrRvrjqPzREHAH
    3w7xcSWMVjJJxiSeiO6o4PJtZBVlb2a6PTQrjY8U9X3AkKSOLPyTx0KhYMAtGwmNMXVhKy
    B53nE16fqxxQIeLaiUQHHhQqDKjIjAUUylwB3o9XDbTlGHBywX5StSQdt2x1U+AHYJi2F6
    0fuE5gs7tuxSUAeeIY7t2Jh3zW/gu12M4GzhdY9p/d7g/3iPcU3Jg/K7fNrE9+Jc3tSJWc
    sCzSFzKi4crKTgXmA2UhEZwdjt/RR/1ePUOtVj69BHWkps4vJGPiNya61BtGiKG00ETKeC
    iftW1WXRFj/sfsjVqFZeKCyId5M7oIu6nz3tRnPNoY983aFYjOwODV9nZxZU/1nX/0dB0I
    ntAXhI9063Kk1JaN0Vz44HUXF5i1Ln2hPIKRlx+s2wTfiq5yWGBWSrcfmg3TJX/Cl4okCZ
    q+XvHi2ZMA4yFVyvK+znpUuIg+9QZumQ1+XcWN0FwsKJBcyIo4F+zaaBnWj2Fg+p2F1zo4
    r2TAERN8GKK3Rv16AxPAd92ukFfXqkf5VjHGOPIPNq4LQkZT3Cr1l3dWMIEbSXndI6UnYL
    x3mDtrq5Q0BFc9MRKWg2NjGepz7lX4CEltG8BeUvOeM4iWt1UzUO2mcJibpw
X-ME-Proxy: <xmx:AswJa2AzWjQrL-m-jHJ8kKfz4n8VMva6N87jpBSVvWbKFwyeRHoJAA>
    <xmx:AswJa3C_fVbQut_BETpbRIT9vNSnRlQymWJxiJyYCGjU6MQZXW5RBQ>
    <xmx:AswJa3ktswHizTmmMpa5XNKbot3ODcmztPi3q2v0SIwaNalBFXNxMw>
    <xmx:AswJa3heW5tKkXf8OP3r53syace0tnecSyLtm1S1wO3OZbCczH83sg>
    <xmx:BcwJay_C11L5CoKEUHFcekgh_t1G0v9nVELC-kMxAypJa-EYLKnJr14_>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.ams.internal (Postfix, from userid 501)
	id D8AE132A0099; Fri, 27 Nov 2026 13:29:20 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-ThreadId: A9TzPJ_Mub-w
Date: Fri, 27 Nov 2026 19:29:00 +0100
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Manivannan Sadhasivam" <mani@kernel.org>,
 "Arnd Bergmann" <arnd@kernel.org>
Cc: "Vinod Koul" <vkoul@kernel.org>,
 "Manivannan Sadhasivam" <manivannan.sadhasivam@oss.qualcomm.com>,
 "Thinh Nguyen" <Thinh.Nguyen@synopsys.com>,
 "Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
 "Krishna Kurapati" <krishna.kurapati@oss.qualcomm.com>,
 "Neil Armstrong" <neil.armstrong@linaro.org>,
 "Kees Cook" <kees+treewide@kernel.org>, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, "Sasha Levin" <sashal@kernel.org>
Message-Id: <ad645fc2-9b2f-49ba-98c2-8ccda8899e18@app.fastmail.com>
In-Reply-To: <179579549935.13164.15609895718346972637.b4-reply@b4>
References: <20261124105939.1440586-1-arnd@kernel.org>
 <179579549935.13164.15609895718346972637.b4-reply@b4>
Subject: Re: [PATCH] phy: qcom-uniphy: avoid build failure from duplicate PHY_TYPE_PCIE
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_102934_738067_2C3AB6AF 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.1 (--)
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
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Fri, Nov 27, 2026, at 17:04, Manivannan Sadhasivam wrote:
> On 2026-11-24 11:59 +0100, Arnd Bergmann wrote:
>> From: Arnd Bergmann <arnd@arndb.de>
>> 
>> Both the DT-binding and the driver define a PHY_TYPE_PCIE constant,
>> which clashes at compile time:
>> 
>> In file included from include/linux/phy/phy.h:25,
>>                  from drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:15:
>> include/dt-bindings/phy/phy.h:15:33: error: expected identifier before numeric constant
>>    15 | #define PHY_TYPE_PCIE           2
>>       |                                 ^
>> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:47:9: note: in expansion of macro 'PHY_TYPE_PCIE'
>>    47 |         PHY_TYPE_PCIE = 1,
>>       |         ^~~~~~~~~~~~~
>> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:127:27: error: 'PHY_TYPE_PCIE_GEN2' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
>>   127 |         .phy_type       = PHY_TYPE_PCIE_GEN2,
>>       |                           ^~~~~~~~~~~~~~~~~~
>>       |                           PHY_TYPE_PCIE
>> drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c:135:27: error: 'PHY_TYPE_PCIE_GEN3' undeclared here (not in a function); did you mean 'PHY_TYPE_PCIE'?
>>   135 |         .phy_type       = PHY_TYPE_PCIE_GEN3,
>>       |                           ^~~~~~~~~~~~~~~~~~
>>       |                           PHY_TYPE_PCIE
>> 
>> Nothing uses the definition in the driver, so just remove it.
>> 
>> Fixes: b28eecc89399 ("include: linux: phy: Add phy attribute "type" and associated helpers")
>> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
>
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>

FWIW, this is already fixed in linux-next by 90d6263e867b ("phy: qcom:
uniphy-pcie-28lp: Rename the PHY type enum values"), which renames
the constants instead of removing them. I assume we'll leave it at that
version.

      Arnd

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
