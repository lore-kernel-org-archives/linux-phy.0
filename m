Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 473B3CF3959
	for <linux-phy@archiver.kernel.org>; Thu, 19 Sep 2024 15:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyhJy6XfF7RGgTYAuPFsgn7wO4l1pQ7VjFzZNUYdCsU=; b=S7F88fmlM187Ai
	I9LK58la/zcAYkCrHd2/QRJJ0rSYjcA9sr3H056eucTCjM+bKU9gJP4kd9JnGEDsJyB2NhtCByM64
	YWTcQ6wjz0AqlZ1SXiWSfOFoZzT7b/95VrEQO822t4qp2C7vjPenLw20oCqjJkIh98tMS9igHwfFF
	SMv91nJIPRY3F/yII6FMW07MFPkAcVgbTlO0XrgouGBBBao/SWDCtPIUMwBFDDji4S5uDIKSPFgc3
	Jkvj3YRRaI6aaZ9cCPtdtcNul+1BRYSYyP2PE7m4FLonirTum2r5xVYVdfdyLheZm99r0Ht4WD5pw
	OGfxyQs6KOGYt3Yvf3SQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1srJE1-0000000AYvq-3dQS;
	Thu, 19 Sep 2024 15:37:45 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1srJDz-0000000AYvU-2kks
	for linux-phy@lists.infradead.org;
	Thu, 19 Sep 2024 15:37:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9EBC85C55C4;
	Thu, 19 Sep 2024 15:37:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E6401C4CEC4;
	Thu, 19 Sep 2024 15:37:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726760262;
	bh=S6MIWYK6Un51svGZ37c7JU+yySKaaclPw/YJv6ZmRvc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=sqQs/SzpmNnddohCXdihZ4r5oYBTBNJ6bP9ZJYIUmw9zHuxB+rYCXPkeW2vqYL1Is
	 XkCa84DwrMY+qAkTUZAhgtS41A5oynMVOhrsh3pG7sOTYyPnYcE1jkY7N8683yNuZR
	 +iYiMKNTDTg9CtVwb4AmBFdKSx8AIXC0y6Hucdjky6SZxTJQ1urIDMMnOPdt6+Dn80
	 rO85T8mvqRCG9TWJ3ESSmX/iW2oTO0DSPpAK/UPxEnebx3QyghNpae1qCH5YmfE3xV
	 nGYMN4Jv+8hzxYlvwreVnj1Q96N+Q9sVfCntq0R9ZqenFPSFkKuWzJqAAPEV4w8U9F
	 SnKW13xPqrnjQ==
Message-ID: <2acbaedc-e577-4685-875c-ba599d845b19@kernel.org>
Date: Thu, 19 Sep 2024 17:37:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: qcom,sc8280xp-qmp-pcie-phy:
 Document the X1E80100 QMP PCIe PHY Gen4 x8
To: Qiang Yu <quic_qianyu@quicinc.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: manivannan.sadhasivam@linaro.org, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, abel.vesa@linaro.org, quic_msarkar@quicinc.com,
 quic_devipriy@quicinc.com, dmitry.baryshkov@linaro.org, kw@linux.com,
 lpieralisi@kernel.org, neil.armstrong@linaro.org,
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240913083724.1217691-1-quic_qianyu@quicinc.com>
 <20240913083724.1217691-2-quic_qianyu@quicinc.com>
 <lrcridndulcurod7tc5z76tmfhcf5uqumkw7cijsqicmad2rim@blyor66wt4e4>
 <b36819ed-0e4a-4820-8c38-ac9d2c6f0f28@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <b36819ed-0e4a-4820-8c38-ac9d2c6f0f28@quicinc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240919_083743_794332_54200D72 
X-CRM114-Status: UNSURE (   9.08  )
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

On 19.09.2024 4:03 PM, Qiang Yu wrote:
> 
> On 9/16/2024 11:15 PM, Krzysztof Kozlowski wrote:
>> On Fri, Sep 13, 2024 at 01:37:20AM -0700, Qiang Yu wrote:
>>> PCIe 3rd instance of X1E80100 support Gen 4x8 which needs different 8 lane
>>> capable QMP PCIe PHY. Document Gen 4x8 PHY as separate module.
>> And this is really different hardware? Not just different number of lanes? We discussed it, but I don't see the explanation in commit msg.
> Yes, PCIe3 use a different phy that supports 8 lanes and provides
> additional register set, txz and rxz. It is not a bifurcation mode which
> actually combines two same phys like PCIe6a. It's also not just different
> number of lanes. Will explain this in commit msg.

Krzysztof, this PHY is new and has a different hardware revision (v6.30 as
opposed to v6.20? of the other ones)

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
