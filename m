Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0AE1AC982DE
	for <linux-phy@archiver.kernel.org>; Mon, 21 Sep 2026 09:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iS2BXWCDVo2WrhLTnsWWe9PpCfpGUayaG6iNvbItex4=; b=wyYEQjmdwIIpgK
	TjK8lbKk9nugUtKQVzP2gRWievh00OIj8jfhT9+kQ45+uvZFXpZn3DAi9sjbAa5goWge2uzTAxBl8
	ik5qRuT02vbTPHiH5tqY0DhNbDBJwbr/mnJw6vMRs8+UmXyJD1Wk2irosTdEldzd34IplTBVrfAkd
	uxt5X9XFH5CCFtTw29eiSlYvvyrHq38EnHVqsH6QDd2ua3HJOO4IEOYkBtEFimkiDkqZSA9ePH2CU
	7Pfbgfd0frPIbIqYBex7MLWpTz8kWvBVjIlEYIEwjGAQNO8CuoseWQ/4hxVKnH8HqcQ8rZrSNY+lO
	r2ZF9mTSKxk4Wuvm2nIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8a7I-00000001TYG-2pxA;
	Mon, 21 Sep 2026 09:15:16 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8a7G-00000001TXI-1QWT
	for linux-phy@lists.infradead.org;
	Mon, 21 Sep 2026 09:15:15 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 68L79wJR467228
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 09:15:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GLhLHWDFh1O3xJfyugwviPWr18h9lNQNghkpTPHNp/Q=; b=C6lpFupq6eIsTgEz
	AxaRqx2vny38HtwLqcSsrou+mjtaqfEjUp0xWzC9aaW/IpSQca9A9qILrN58now4
	1zLyh7b1uHQYhE9Jz7SoKuVerVoFSAV1sDZzDXfQKXWXaxRqbRY82344EoWVf+Mh
	MSjWb2Q0saRNuaqYm2c+lrjcJb1JGvJyjVsBp4utM+TAsPpmIwoh7KPkQGvXaKM5
	lB0oNFFp1Y1onyo1TObIjHY215VwRD/x6s0dxKuTSi36lVNAwzFgFOZW6UfYcYfm
	U1W2uN4wuFU585zhiPoV5qWLwDgumc76OUUkSqyG2nDlOU7dr/amn8Z0cgdq6yJu
	eWLscg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4gtq8b9v51-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 09:15:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2d6fb956002so38675085ad.1
        for <linux-phy@lists.infradead.org>; Mon, 21 Sep 2026 02:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1789982112; x=1790586912; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=GLhLHWDFh1O3xJfyugwviPWr18h9lNQNghkpTPHNp/Q=;
        b=HnsdK15Q+ZW988VL2yeUDcYfA4hQ5X/rmMpp717t+uU9O1oevBSvD0rQR1yQqn5sIM
         wssmrwletAHql0L9hCdJy+UnrizQK++d820yC4wDFmQ69sNSqGYh5IckBkPUQPhOYejk
         vu1lYSwMa7rZxiISVIvkEfI6eXxnrE5owG3NEKliZEpYqmq8s20FmJ2+EAAtosenJRSO
         Tysreds8WJ6+WkUPva/gRYsActbz3wi3pMm/rPbKEkSP+tyfP4320607/ETEZ0ifAvR8
         IcJGbdfoBNQaz4sgy0CWfaz6wj4J7jPUgMGvi+KG65/ubj5h+7q5VZieRbCNcd5Da9Be
         GohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1789982112; x=1790586912;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GLhLHWDFh1O3xJfyugwviPWr18h9lNQNghkpTPHNp/Q=;
        b=1zxPZHH65vHJzZKupizm+d0iEmPTkw8yW1P3KvdnGET8W3NHme258pt5/S5OpOUsV6
         RDoYYX8GYCemrMGqxPU/ifJHf5I0KPyRuNRlh7sBLs/7nLsI6Lx2ktcbUoMo6RAHX0tp
         DHs8bYPvnouxJJ2LCjfvMnZ8BBGSB/dUj7nC2YO72frbHIsdf94JFl815DPzdTEV+AA4
         9pfhzSsBdGQHCvVfFtmj1AbZc7N90L/5yk+LJoyKO/IVoA02IvZRPyyoEUy8wWLn5KJx
         boVoZY3ILwEIxiD47UxfUJk0jU3js9GkwuLXVwjbFP9d/d8Z03HmA59LMbtAwHi+7Qn2
         5JTg==
X-Forwarded-Encrypted: i=1; AKwUvBxvVUAbOsQUcsAyj+8E6sros8mnrpUbeJEBKP16uioFeMmhZGaIL1PPIUDD/K6XVxptlHCeV/dvvDQ=@lists.infradead.org
X-Gm-Message-State: AFuF++ngUvjWRIy9UbGO7nVwV7fRCen/lZY9lzyWhbJAywmg3C7cZc+4
	jbw7jmN0wCGuW5gzT0cye1VUpOL1K8VbBar+22fURR+S26MbkgWKjSRvImCb5v8/OjPW3Map8R4
	LMg4uOGOUo5ELrfRr1RC1NsldAdpWg/IM59zWqcqgZqcFJKegihr/1T3k6pMB1m0W6m2k
X-Gm-Gg: AYBFou04uKMMDSm+u1ndohCnRGUXY73uke95B0RPCC5vi26tqHPHbdsVzNfbWhuxbAw
	9YxnKEfY3rWMMdS2Xfs4gZxaJUX2X1n/cKjEOwMYBzMT0m3Q9akgfV1QIa+hUo6dpvwbRKzu/JB
	f1zomZB6jwCIFqN5HgON4pqtgwhq1oZVTIqTEemyqBsNDpvvTkuP5UsXqYhBPWuXlbj6RA36aAG
	GKCbjos1TQVjnT29C8Tqxu9cJHq/VYn0epKFlPrQMvNGYtaFSpBSNauXpvOehdLEq+OkEdopvRm
	RcKWF3pSCfYnBVNohJuma/nUA8gghQIXY/l3EvoI7A0vdKnj5OameVfDyf5XovZAqflR9NsOExx
	amQDmMEnMcw7JEUvZMqHPTQ2sbRT4CsfISwhgUWzihE4M
X-Received: by 2002:a17:903:468e:b0:2dd:c100:4b81 with SMTP id d9443c01a7336-2ddc1005f8cmr91844135ad.56.1789982112406;
        Mon, 21 Sep 2026 02:15:12 -0700 (PDT)
X-Received: by 2002:a17:903:468e:b0:2dd:c100:4b81 with SMTP id d9443c01a7336-2ddc1005f8cmr91843865ad.56.1789982111982;
        Mon, 21 Sep 2026 02:15:11 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-33c3311ad4esm17917215eec.5.2026.09.21.02.15.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Sep 2026 02:15:11 -0700 (PDT)
Message-ID: <65d9422c-d691-4b5f-b1f3-c2ae5ba5cfc8@oss.qualcomm.com>
Date: Mon, 21 Sep 2026 14:45:05 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] phy: qcom-qmp-pcie: Split phy_ops into
 init/exit/reset/power_on
To: Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20260915-align_pcie_init_sequence_0916-v1-0-0b2195836f30@oss.qualcomm.com>
 <20260915-align_pcie_init_sequence_0916-v1-4-0b2195836f30@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20260915-align_pcie_init_sequence_0916-v1-4-0b2195836f30@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwOTIxMDEzMSBTYWx0ZWRfX3WiayEfCqEHr
 fXPwEERuRlX0rhupmw25HBb6IM8C6igNah19JL4nAHe7p60xaKVG60sKGeMLsC126IGYuZQFDNV
 yKQzr+l+s7wpHCdCTruXsc+19XrdzfR8pBh3t45wwq9gcSV/5trTGPwNUC90zUr9npcDDPk4GKQ
 NnWZNQbL4npVj1D66dp3zkzolzqyQuMUbIUfkSurFL30ldqnxUxJSYr3jiFjVNZ2xjacYmdXj87
 n2If92iyNb5qoRG0LvPpvzHmo9mKp2jttJb2oxoHWfAWn4B9jRW3w8NEB5mMnpiI/fr58xc1MSe
 OfZ6w3oZwYr5fY9NswMkYS1x82YUIoQlm9noCCOZ5gGxvAmdnn3y7+52IH+nYhWf6PW9+Btfc5d
 T/XxGS3exPEpQM3eZFfULfE396JzS5wwtXges/XgmOHF5T7ao2TuVQ4d55pueHO6mf7Q/gI4siT
 AmWM5+75rlPKj8Tguww==
X-Proofpoint-GUID: 0gHp8QmN39zupLFUpZKPAC81BSCFZTHe
X-Authority-Analysis: v=2.4 cv=T/8Z3PKQ c=1 sm=1 tr=0 ts=6ab0f5a1 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=VdqzKS8jKosA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=DFGctsAPzAe98lL7n_0A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 0gHp8QmN39zupLFUpZKPAC81BSCFZTHe
X-Proofpoint-Spam-Info: AW1haW4tMjYwOTIxMDEzMSBTYWx0ZWRfX5YvAkSXkLg0P
 PWBcgf7bnsBHFefTToQR05ZgY9GFxHYlkkB9R2i0p8yWJqCRQJkr5hz+6z4BM4lxGgXikeOctSO
 N/3gbv2G0QfgvyYSRSG03amiLPlVd6I=
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-09-21_03,2026-09-16_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 phishscore=0 spamscore=0 adultscore=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2609040000
 definitions=main-2609210131
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_021514_504633_B7050D96 
X-CRM114-Status: GOOD (  14.40  )
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


On 9/16/2026 11:34 AM, Qiang Yu wrote:
> The controller now calls phy_init() from
> qcom_pcie_host_init()/qcom_pcie_enable_resources() and phy_reset()
> from inside its own core reset assert/deassert, so the PHY's reset
> toggles alongside the controller's core reset as HPG requires.
> Making that actually happen here needs phy_ops::init and
> phy_ops::reset implemented, and phy_ops::power_on adjusted to match.
> Split the combined phy_ops::power_on/power_off into
> phy_ops::init/exit/reset/power_on to do that.
>
> phy_ops::init enables regulators and all clocks (pipe clock first)
> and determines skip_init/skip_reset. phy_ops::reset toggles the
> reset that skip_init picked. Register-table programming used to run
> while the no-CSR reset was still asserted; now it runs afterwards,
> in phy_ops::power_on.
>
> Adds skip_reset to struct qmp_pcie so phy_ops::reset and
> phy_ops::power_on share the value phy_ops::init determined instead
> of re-reading PCS registers.
>
> Signed-off-by: Qiang Yu<qiang.yu@oss.qualcomm.com>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 184 ++++++++++++++-----------------
>   1 file changed, 80 insertions(+), 104 deletions(-)

Verified the PCIe enumeration in IPQ9574 and IPQ5424 and it works fine. So,

Tested-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com> #IPQ9574-RDP433, IPQ5424-RDP466



-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
