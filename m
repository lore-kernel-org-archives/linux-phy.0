Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7985C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:40:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bsIzpmWuJzD6uqlVWG+/O+JxRewZzr/0PGL+PFD0QKs=; b=cmGOZfHMnOK+pi
	zM/uQR7jrOc3a3v8jsjLjvmcVgFC45gvJIwdlRx5PAy2e/a6vh6Vw5YlKhTFjoBaVhwF5ruW+PhUO
	2iLMrPSjPLZOHZUCOppGQ85nJm+D8VvvWcQHSQCiK1LROucEC3TTZ3FWcAWXFf3QiNkptHinwEPse
	G0rJF/bi4n9VPKa/lR20ahrnPbnxSgG03vKVzMvdH//MLYhqGJgWPehbZpgQJyVrULGOsSC11HgEv
	TUvZp1s/jGyC2onEmlwFobBG41BBPETKUMwWICzp2wXnewImAStCunBl9p1cuJ4ZK74m3eMZSW/sF
	v0MDLg5IGlwQAPT1aiZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyXz-0000000E8i9-2wF6;
	Tue, 07 Jul 2026 05:40:43 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyXw-0000000E8hb-0zl0
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:40:42 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66748nDT2649166
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:40:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	09/2e/voBc+DyuWudh1rLfEp3vVKAMHxiosmb9KxU7w=; b=OkLGvGfiGBUgG5vL
	WKCnDi1XODznle+cnWEVbG5R7qSGM70OtRurYEvAwiJCD+RIvG1WtYODlMwQQEnN
	qQ9hYtbJbj99NQaP10wJwkzqD+sOU/HNQZsb534UJxG9HK3+xVjY4yaaVRfmtdje
	ORIEEDJqZ2bNn9dA+Al1WYyRO4lZrzcYWK0XLHOY3HDyv7QjrtLLuMyu/VrQDZAR
	tT5F6hR+cRv/0GI1pN5UtwBbE57w4cEanivdkyM6yHtVKTlFVDWGhenE2pSB4b0A
	EE/YOdy5InErfZRZPm0EPoj3RVOuyJ3XYn0+M8PA27JOqWFRufFFet23H6RWz9tB
	a+1Heg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f8fdw2pkn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:40:39 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3811279d51aso7900914a91.1
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402839; x=1784007639; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=09/2e/voBc+DyuWudh1rLfEp3vVKAMHxiosmb9KxU7w=;
        b=XZomgtwSkkBAov/I/trWUu1DckGNFYiNa9SyVQT1/6/VInYvaqxQ0y+7Nm0nMnji78
         LIUZp8jAWs1gjRjoKXg4K7bPCVCmTYjL7YkxCajJC0cJtIlbBtBp/MFGIpv3G8O652BC
         OLXpcCrS570pIbySULb/68gt1N74HKWhha/BcOqDnQiRnQbrTjcDBQ/qoaUqb9M/TO44
         Uh0/I4Qx6KWq4mShiCIsl68tYNJdHQGzuFYF5MjHFUuLF97oBiTc9qwEdHTl4Sxd0/UP
         C5nMQ3Nob1yQ8VSdUB/TWjq3YXtQ1h9uCxRJ1TvU/8Jl+l0NZKU35Dqh7i7hDScg3EMl
         Y7Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402839; x=1784007639;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=09/2e/voBc+DyuWudh1rLfEp3vVKAMHxiosmb9KxU7w=;
        b=PXI56LAI81S+/vcNMf9+jdkY3ORnpDlfWScvIlsEVAwxqFBmXEbMb2V8CtNlYT7sM7
         GmudYS5xRGakDOaDl0nJMkNxYw0Io4PjPrPa3alW3R1NfvoBohx+KpwP9r4HSpjnzzQu
         a1RfVFSz4hVYsIIPaaxx0XZjuLaW/CEX9qWhyqEVOc/NpgD5B9n9wwZnx7IZfFzIYV3g
         FSz1LfD+UFKShNzXYzDYHdq4X+ZUDD9E+92j8oJ7YKHuOBWcgjmZVWLGf5/i3REqfrDj
         +12Bz/Qr4rZnTo1EIilg/vToxTeergFRlRGBu5gwdWz74FL1O4yhd6BjarGkhppwaljP
         EysQ==
X-Forwarded-Encrypted: i=1; AHgh+RpdfxGmmZzRABQlSnAy2Rr6c2zg6RX3rXPvGbSob5D91WSChdvr2p/J9xlwNEe4of7p+L7/sS7vWmc=@lists.infradead.org
X-Gm-Message-State: AOJu0Yy9OGzKMFlnY9SXlS47sbUd6iWb71evuCA6nXQFouKT7npiyZvX
	2J+wjaFJ00WVVgUyLS1x+uL/IfqOp0krmyW5f8qreXWhCtTsigWRRNa3QLGaWcMadhMR6w6HDea
	Rlh1UYveLB9OtFS7FlKQNMCAcM1hHAUndZ8DHGs3zeJDuPQj/jpta3jVxmA+XUyTB59vLxMNmxz
	73
X-Gm-Gg: AfdE7cmTtNqBtH5Vb5v/KAZMB6eICgSQAVnU+J6gcocU73TiEcloOHVxo5WzUdG0ZzY
	2RFR9fJ+DVrG6gjwwpTYDD+fQP9jPXEXgHjgG5Ux20hn9nvHnLR+FdwkLjjX4qwyP3xhvmdXrIS
	ngu7ONDBpk7KCg+JE/UlOVz+OMORWeORfA0H7WFB3vbOEfHQ564l8mqfZJYObRIr2WkMbjWP62c
	NYWiwtYwenG8giC5S253w0+wS2Rn9GzesZeKTpUfCXvMg8m2+qVjlSi9PXdFsgTunK+BreW7jBC
	q+Qzuhct3A334i8tS/ZHZYqIwj87sxMxH5g5S7hT3dLWfsOHD4YlX7nEKBN+v5cMODACwFtgTeI
	t0yFVbEudP2uc2RVQ356WHUbIMt5kxxXPtvBVCYbKyonBNUp4A+PAvLHyVh774WP8slkovAD//0
	z5E/zz
X-Received: by 2002:a17:90b:1cc8:b0:387:e0db:3fb1 with SMTP id 98e67ed59e1d1-387e0db45bfmr1432283a91.42.1783402839115;
        Mon, 06 Jul 2026 22:40:39 -0700 (PDT)
X-Received: by 2002:a17:90b:1cc8:b0:387:e0db:3fb1 with SMTP id 98e67ed59e1d1-387e0db45bfmr1432259a91.42.1783402838621;
        Mon, 06 Jul 2026 22:40:38 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-387d3c6bbdesm432182a91.16.2026.07.06.22.40.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:40:38 -0700 (PDT)
Message-ID: <8477653e-cd5a-4e8c-bed3-fc1a1e21088c@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 11:10:31 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/9] arm64: dts: qcom: shikra: Add PCIe PHY and controller
 nodes
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Konrad Dybcio
 <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <20260630192944.GA224708@bhelgaas>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <20260630192944.GA224708@bhelgaas>
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX8B7fakXinzHl
 XCJXJW2MeDG0S9XBkfYU7VAY/GjsE00ieAEK9YoitOAt5+2JPieLxavX57Ol/i2cHo7L7bTOPqz
 +6bRVopxIgP6kF6D4iBxHzyTduPpFDA=
X-Proofpoint-ORIG-GUID: vXq6o-QaaJIhs1QJL_WQMwSyqDVOu0Pb
X-Authority-Analysis: v=2.4 cv=EtziaycA c=1 sm=1 tr=0 ts=6a4c9157 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22 a=JUOmGHd9cyzBAK8M_EkA:9
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX5yEAR99A423w
 myOOskPeFgy9FobC2cx4yxMMNZJ5cyv52HWzuJaV//hXU5AVbjJmyhA3mAp99mNkXI0uzb7TA+U
 l93tLCjX0RFyvljKXzkVa/lcEgwn3WyVeDJVhkwrhEz5OhH7gCvm1Mw0937dYkhRFgzIlL2p+Go
 nsgMiYxOBJy9vegt603PBOPxdxNpnb5pnk9raCAE/RlXlsRyeU/4G/mlC9EuZSXMdYIfn/nCEaT
 pZ2JnlC6LSmEI8KGvJ9zm9YclWmoW+6I+rh7Xd+Qih+c4T4Y3oiu+Oz/bPOZYVSLVxKrZkK6I3U
 Z/p8I4Tw/0GgHhsRVj55gZj7zOuGL1CvBDh3xjjxhMMiXTwBVvudjULzLDMjoAfH1/iT8/FA3k+
 R769sfycTSB4axwzO386XjuOPln6VjHP2tzGKNqmRPCxu49blfyRzaAHo7SglfCyg4pK8zdbCH1
 zFQ4UzduLRGbCJag+RQ==
X-Proofpoint-GUID: vXq6o-QaaJIhs1QJL_WQMwSyqDVOu0Pb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_224041_506697_A7FEFFDB 
X-CRM114-Status: UNSURE (   8.64  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org


On 7/1/2026 12:59 AM, Bjorn Helgaas wrote:
> On Wed, Jul 01, 2026 at 12:32:49AM +0530, Sushrut Shree Trivedi wrote:
>> Shikra supports single PCIe instance with  5GT/s x1 lane.
> s/  / /
> s/lane/link/

ACK'd

Sushrut


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
