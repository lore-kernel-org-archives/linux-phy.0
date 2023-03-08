Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE318C678D5
	for <linux-phy@archiver.kernel.org>; Wed,  8 Mar 2023 11:38:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:References:
	In-Reply-To:Subject:CC:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzNYTQJFcYYXwJ9YsgUx3ta7tMBQ/c66fO2FvYZangU=; b=AsQXwTRTOD84Cv
	PcBqEy1p0sJWSq2EFdvxnfOIBMhRA3pUHSLVWpTrKzHDwc+tX19bUrc3eWEZvOTRejlWptJZEW+17
	B5OZV/5obnvQMKkjmANi4eDF2neKJ6frxbVLRQtbpHNwVr1qfgdGaq1vU3xO9w4td7om6xObE4W4i
	7Lwco4VEvTbZ5deIr7T/t+emskQ1s0PvXP1CiGgn8rb/LqrLcH0P14x6mQReNZPPMKsS2deVMeExu
	r4bOBSTogDL07EJC+v5LK9FNfgpiJg4xqmDr6sucCUuLBuCmG0x8kwyAjVLeYmdhDIpfTmffBqceY
	qB0qJXFQnwqkusawtmJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZs7Y-004dvk-Ah; Wed, 08 Mar 2023 11:38:12 +0000
Received: from vmi888983.contaboserver.net ([149.102.157.145] helo=amity.mint.lgbt)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZs7V-004dtt-B3
	for linux-phy@lists.infradead.org; Wed, 08 Mar 2023 11:38:10 +0000
Received: from amity.mint.lgbt (mx.mint.lgbt [127.0.0.1])
	by amity.mint.lgbt (Postfix) with ESMTP id 4PWr0X1SRcz1S5Jw
	for <linux-phy@lists.infradead.org>; Wed,  8 Mar 2023 06:38:04 -0500 (EST)
Authentication-Results: amity.mint.lgbt (amavisd-new);
	dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
	header.d=mint.lgbt
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mint.lgbt; h=
	content-transfer-encoding:content-type:mime-version:message-id
	:references:in-reply-to:user-agent:subject:to:from:date; s=dkim;
	 t=1678275483; x=1679139484; bh=fUz9L+nr5UDOp/B833d5gx+2B4OI8cyq
	Eq9E6OrbgcI=; b=ZT10jEWW2dVZfS8psDQuNQeE0vk1OffgWGF+qHGbP9L+uBXo
	kEZO+EltdbXZtR2z/gotMlLq3RlqGTK8yCddN6BelRMPhqrpU4ERb9ngx2OWqeR9
	ay6LvfgQZ4AqcYgtXQpd9+QoGiI0jC+r4rju6dBPVFLmzoF7+ow2k44KkBhkGJ6b
	UayhbTqmGQXh/gHIoS2O8Qmncm+I3yTy++iTZTKCKA6wUqzYkW/OdfeaeI5JZIwd
	f7g12LICKP9nVNUXa8zC8V+H4u6K4+gz4dyd2xnt0UFmvc2Phdr7YIOM1brzVJrR
	zvSaTsroXq9b40Nt0td2WlQ3s4JY6+i8O4Ak9w==
X-Virus-Scanned: amavisd-new at amity.mint.lgbt
Received: from amity.mint.lgbt ([127.0.0.1])
	by amity.mint.lgbt (amity.mint.lgbt [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id beK91FVMJ5Ec for <linux-phy@lists.infradead.org>;
	Wed,  8 Mar 2023 06:38:03 -0500 (EST)
Received: from [127.0.0.1] (unknown [186.105.8.42])
	by amity.mint.lgbt (Postfix) with ESMTPSA id 4PWr0L6QcFz1S4yx;
	Wed,  8 Mar 2023 06:37:54 -0500 (EST)
Date: Wed, 08 Mar 2023 08:37:48 -0300
From: Lux Aliaga <they@mint.lgbt>
To: Johan Hovold <johan@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>
CC: agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 alim.akhtar@samsung.com, avri.altman@wdc.com, bvanassche@acm.org,
 keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com,
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
 linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
 martin.botka@somainline.org, marijn.suijten@somainline.org
Subject: Re: [PATCH v7 3/6] phy: qcom-qmp: Add SM6125 UFS PHY support
User-Agent: K-9 Mail for Android
In-Reply-To: <ZAhwTcMZoCQVULQe@hovoldconsulting.com>
References: <20230306170817.3806-1-they@mint.lgbt> <20230306170817.3806-4-they@mint.lgbt> <25c17af5-8f6b-a2c3-dab3-f9bc69711db7@linaro.org> <ZAhrT1ICTQjfdeGq@hovoldconsulting.com> <64ab4061-6a8b-662e-1c7a-99b0da26751c@linaro.org> <ZAhwTcMZoCQVULQe@hovoldconsulting.com>
Message-ID: <DE127158-6956-42E9-B7AE-9687B4ABD6DA@mint.lgbt>
MIME-Version: 1.0
Autocrypt: addr=they@mint.lgbt; keydata=
 mDMEYyUigxYJKwYBBAHaRw8BAQdA4Emr08ZPSL9p/JLdojT2GPRmh6URPjLQf9l/Kf7x5eC0G0x1
 eCBBbGlhZ2EgPHRoZXlAbWludC5sZ2J0PoiTBBMWCgA7FiEEYa2kUv8kbagAwdmwtWyAWWhjdDcF
 AmMlIoMCGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4AACgkQtWyAWWhjdDf/YQD/VfoHtwZa
 OyBStI87Sv3Wdydps+MALWt7RfPA/AVd/i0A/21kQ+Wr6Hrb7Lz43H3+JLTaQk1XGKn7HMvpARdw
 tVYBuDgEYyUigxIKKwYBBAGXVQEFAQEHQJE2MuI8EY9+pcwq9ynsMxCh1J0AGGo7hO2n9EQtOClI
 AwEIB4h4BBgWCgAgFiEEYa2kUv8kbagAwdmwtWyAWWhjdDcFAmMlIoMCGwwACgkQtWyAWWhjdDe+
 xwD/ZtWx58K/+zLhrdO/kjGftMVM+J3mPA5fJxRYC2Ut42ABAKb0aGOEwFS5XvkOwCLUAMqLGjRg
 SDwi1EbSA+iQnkkB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_033809_546762_769AC368 
X-CRM114-Status: GOOD (  22.38  )
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



On 8 March 2023 08:23:57 GMT-03:00, Johan Hovold <johan@kernel.org> wrote:
>On Wed, Mar 08, 2023 at 12:15:39PM +0100, Konrad Dybcio wrote:
>> 
>> 
>> On 8.03.2023 12:02, Johan Hovold wrote:
>> > On Wed, Mar 08, 2023 at 11:09:48AM +0100, Konrad Dybcio wrote:
>> >>
>> >>
>> >> On 6.03.2023 18:08, Lux Aliaga wrote:
>> >>> The SM6125 UFS PHY is compatible with the one from SM6115. Add a
>> >>> compatible for it and modify the config from SM6115 to make them
>> >>> compatible with the SC8280XP binding
>> >>>
>> >>> Signed-off-by: Lux Aliaga <they@mint.lgbt>
>> >>> Reviewed-by: Martin Botka <martin.botka@somainline.org>
>> >>> ---
>> >>>  drivers/phy/qualcomm/phy-qcom-qmp-ufs.c | 12 ++++++++++++
>> >>>  1 file changed, 12 insertions(+)
>> >>>
>> >>> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> >>> index 318eea35b972..44c29fdfc551 100644
>> >>> --- a/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> >>> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-ufs.c
>> >>> @@ -620,6 +620,13 @@ static const char * const qmp_phy_vreg_l[] = {
>> >>>  	"vdda-phy", "vdda-pll",
>> >>>  };
>> >>>  
>> >>> +static const struct qmp_ufs_offsets qmp_ufs_offsets_v3_660 = {
>> >>> +	.serdes		= 0,
>> >>> +	.pcs		= 0xc00,
>> >>> +	.tx		= 0x400,
>> >>> +	.rx		= 0x600,
>> >>> +};
>> >>> +
>> >>>  static const struct qmp_ufs_offsets qmp_ufs_offsets_v5 = {
>> >>>  	.serdes		= 0,
>> >>>  	.pcs		= 0xc00,
>> >>> @@ -693,6 +700,8 @@ static const struct qmp_phy_cfg sdm845_ufsphy_cfg = {
>> >>>  static const struct qmp_phy_cfg sm6115_ufsphy_cfg = {
>> >>>  	.lanes			= 1,
>> >>>  
>> >>> +	.offsets		= &qmp_ufs_offsets_v3_660,
>> >> Will this not trigger OOB r/w for the users of qcom,sm6115-smp-ufs-phy
>> >> which specify the regions separately (old binding style)?
>> > 
>> > No, that should work fine.
>> So do you think the SM6115 binding could be updated too? Or should
>> we keep it as-is for ABI purposes?..
>
>They could be and the possibility has been raised. I think it may be
>more important to convert the old combo-phy binding (it's on my list,
>but I keep getting preempted), but at some point we can get rid of the
>legacy UFS binding as well.
>
>> > But looks like this series needs to be rebased on 6.3-rc1 as these
>> > offsets are now already set in mainline.
>> ..Or did you do that already and I can't find it?
>
>It seems a previous version of this patch was merged almost two months
>ago.
>
>	9b9e29af984c ("phy: qcom-qmp: Add SM6125 UFS PHY support")
>
>Not sure what failed here.
>
>Johan
Yes, but it received some comments regarding using v5 offsets instead of v3-660. I could spin off this change into a new patch if necessary.

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
