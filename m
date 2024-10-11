Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D72E4D0EE17
	for <linux-phy@archiver.kernel.org>; Fri, 11 Oct 2024 16:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOyBU4LYbi2FpRCYQmbSrLsaoPRQbyYjJt936XzGCd4=; b=kGgBGmWO5UPP0B
	6ZhP2AlaOER1E7Ba0CAKwVk7xFwDePKsKKz0tqRjnN3nuxpKdNj/+cYjWi84xaMjSvB/qesfLgUzL
	00G1VeeBPupsm2wNwrlMSXDd0SrOdH2Cqk//x+n9WylRyzS8LSl7qT1iI2eENqp8/1uS/Xb3pA0Ul
	EmCsCZOHL8A9LQCxXidQDN+sasDQ/kYclo4W++n7HX9FcMF8i0M5W2NmgCEbHJfyN7TTtXf33PRdi
	Wr87FSSIRi1IlMaEAgnS8tSDianWaP5onwtOpg+knNiYNQFS2+I4NH9A76pgZ8f/YorBf+Myhmb2U
	hebDzZHLZ9uwVJtxc+0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szIRB-0000000GxVZ-252Q;
	Fri, 11 Oct 2024 16:24:21 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szIMm-0000000GwyJ-1aGn
	for linux-phy@lists.infradead.org;
	Fri, 11 Oct 2024 16:19:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id AD896A44B52;
	Fri, 11 Oct 2024 16:19:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EDBDDC4CEC3;
	Fri, 11 Oct 2024 16:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728663587;
	bh=Oe4g02mNskM34IpQucky4qyszqetx5ZYmeOQv/iI9fk=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=HVjaRGFali01zfN6riKj9r6C3QSoXuOv0E7HTOHMlHVOhfjv7iOTKfRi3uOxRnrqi
	 l4WZ7hGg5dmHQRmsVYyjMLwaqN+zdPant56A98/j+wz+L7cDlXqqcPE4Jekjm2Dhzv
	 cH6HMwvoTzETCaTbu1nI44oIHxBTZwdLU+T2QXJNeQ/zxgvUlDHV7OgHCieZoj7nrv
	 glV1f1yePN8V/GWb8jhnZLvkGgUCY5oQLeEUq3xuhPNHQa8li8kRIOIpD9X4778/F9
	 kCYcQgT3OYw4WeOZGWX9RDVBceLVTKb1PJa2uZ6t4Antrt9sCCCsVZgpF3LLrfOMxX
	 5r34Wu5U/kjhg==
Message-ID: <ed72bde5-88a4-44ac-a47c-0d331576aea9@kernel.org>
Date: Fri, 11 Oct 2024 18:19:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: AW: [PATCH v2 2/3] phy: Realtek Otto SerDes driver
To: markus.stockhausen@gmx.de, linux-phy@lists.infradead.org,
 chris.packham@alliedtelesis.co.nz
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-3-markus.stockhausen@gmx.de>
 <e4ab7c7f-b5a1-4507-add7-862c18b09995@kernel.org>
 <000a01db1bf8$232fb4d0$698f1e70$@gmx.de>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <000a01db1bf8$232fb4d0$698f1e70$@gmx.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241011_091948_584316_2F9FDC3A 
X-CRM114-Status: GOOD (  17.95  )
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

On 11/10/2024 18:10, markus.stockhausen@gmx.de wrote:
>>> +
>>> +	ret = kstrtou32_from_user(userbuf, count, 10, &reset);
>>> +	if (ret || reset != 1)
>>> +		return ret;
>>> +
>>> +	rtsds_phy_reset_int(ctrl, sid);
>>> +
>>> +	return count;
>>> +}
>>> +DEFINE_SHOW_STORE_ATTRIBUTE(rtsds_dbg_reset);
>>
>> That's not a debugfs interface. Drop reset.
>>
> 
> Hi Krzysztof,
> 
> thanks for all your feedback and kickstarting me into this all. I went back to 
> the drawing board. A overhauled version will be available over the weekend.
> Regarding the debug interface I have a question left:
> 
> The current state of exploration and understanding of the four different SoCs
> boils down that 3 debug writing functions will improve further testing and
> development very much.
> 
> - reset SerDes -> used to compensate for link hangs (because of wrong firmware)
> - change mode -> I will change it so it will only accept supported modes
> - modify registers -> I can go without that.
> 

You can always have it as out of tree.

> One may ask why? There are a lot of different devices out there and I have only
> one of each series. So if the driver provides this debugging flexibility users
> (especially of OpenWrt) can assist in analyzing/testing without complete rebuilds.

I do not oppose it strongly, but I think it's risky even if you allow it
only to the root user. How does the driver handle resets happening in
random moments, e.g. shortly after probe? It feels like a way to brick
the device or make it inoperable, if root is malicious.

For some reason `git grep SHOW_STORE | grep reset` gives exactly 0
results... :)

> 
> What will be the way forward here without dropping the code?

You can still send v3 with the code with argumentation why debug
interface should be able to perform reset of serdes phy.

> 
> Last but not least: I expect the v3 version to have ~1/3 of the code changed.
> Shall I still give this a v3 tag?

Yes

Best regards,
Krzysztof


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
