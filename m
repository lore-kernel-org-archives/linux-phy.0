Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD37BC3ABCB
	for <linux-phy@archiver.kernel.org>; Mon, 16 Sep 2024 23:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lK3ZBUtS45q3eICHuCE7RK+xyjOEO4oDe/boWENx4Qc=; b=EaGF6rraAuQctk
	SFHXil6dicsNN9wKz5phsYFfh9riZL4pPPno08VcwIcc6HXeNpxM0o8YtaI9yFr6odJKdY+x92L9C
	Fgan7pFy21DcUVNcmHROigIIGtvDXfJj1rkzQXV+Gt+L9ZegibLaU1ZthXLbCTeSQoHrIAa5TQqey
	KFbqaPdXPcXb7c4yc+VTgDpE2mqpDkiTKwlN2cjg4TqErAKkknKH6jVexWvy3OVG9OmykBArRa3W3
	fa1V+2rC4dRvBT5gmPWMgyP+CXd8YWlAlqggwmzSngBDVbhVaVcVV3BLd7/QohzliUAFsyKGz/Ol/
	cIpapibxrqv/b/PTP3kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sqL7X-000000054Vw-1gsW;
	Mon, 16 Sep 2024 23:27:03 +0000
Received: from nyc.source.kernel.org ([2604:1380:45d1:ec00::3])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sqL7V-000000054VY-23gA
	for linux-phy@lists.infradead.org;
	Mon, 16 Sep 2024 23:27:02 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id DD560A4038D;
	Mon, 16 Sep 2024 23:26:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 13A89C4CEC4;
	Mon, 16 Sep 2024 23:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726529219;
	bh=d9UEpU83x5hAG5oMvx4HxcrAGOkKGgQANVisyV8UGI8=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=SqYtWNpWUVSHBdzHfFF//6C1+brsULRgPpUKjETvFj4vraaGw2aCwwLbh6Ei+plTj
	 bK02Q8DhvkxRslymdv/Y3pscVdgjI89OFN6aOjWvQnOjUPL8q6UVLI9ZcR1S88qQ6A
	 uiQc7Ow141IIoqccqUONlbKl+lLsaNIi+pgAwBXvjDwUuULVqUWZp49yctVCo6nMLW
	 mA0zVB31Ta4H/tZxlWFISn3r9Lc79n+ensJSulvSItS4zuRP4ClcXNDjgVQm2XuMUX
	 hv0MUI0+U/cNqHVW+ZOff08pxtTvAOj97rlZ4wFAe2mla6rgBKyXp2EuUu4GUSCrKh
	 Hn6GnXQk6EFAw==
Message-ID: <f736f02e-f19b-4be2-86ad-73d6ae7c6dc2@kernel.org>
Date: Tue, 17 Sep 2024 01:26:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/5] dt-bindings: phy: Add eDP PHY compatible for
 sa8775p
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>
Cc: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>, vkoul@kernel.org,
 kishon@kernel.org, konradybcio@kernel.org, andersson@kernel.org,
 simona@ffwll.ch, abel.vesa@linaro.org, robdclark@gmail.com,
 quic_abhinavk@quicinc.com, sean@poorly.run, marijn.suijten@somainline.org,
 airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, quic_khsieh@quicinc.com,
 konrad.dybcio@linaro.org, quic_parellan@quicinc.com,
 quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
 devicetree@vger.kernel.org, quic_riteshk@quicinc.com,
 quic_vproddut@quicinc.com
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com>
 <20240913103755.7290-2-quic_mukhopad@quicinc.com>
 <2hv2hcpbanduw4wg2wbza4jkze4sgilrtyc7zack23uygwsjol@ckskl2rkd5xp>
 <t4ytnii3sdiqsni74d7qsi2c6uv2klwmzmgznnirt2z55to4hj@lyaoh5fzcyti>
Content-Language: en-US
From: Konrad Dybcio <konradybcio@kernel.org>
In-Reply-To: <t4ytnii3sdiqsni74d7qsi2c6uv2klwmzmgznnirt2z55to4hj@lyaoh5fzcyti>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240916_162701_634571_F4470DB8 
X-CRM114-Status: UNSURE (   7.11  )
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

On 16.09.2024 10:33 PM, Dmitry Baryshkov wrote:
> On Mon, Sep 16, 2024 at 05:23:55PM GMT, Krzysztof Kozlowski wrote:
>> On Fri, Sep 13, 2024 at 04:07:51PM +0530, Soutrik Mukhopadhyay wrote:
>>> Add compatible string for the supported eDP PHY on sa8775p platform.
>>>
>>> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
>>> ---
>>> v2: No change
>>>  
>>
>> Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> So, is it reviewed or acked?

After a thorough review, it has been acked

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
