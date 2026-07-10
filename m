Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3022C43458
	for <linux-phy@archiver.kernel.org>; Fri, 10 Jul 2026 13:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KwdIlUDlTHvSdiDB0ev1s+CvIvZdix8IwuKAtIiI+2c=; b=eHcgd4Yd5Irnrh
	jthCKZQDk7e7WYAMrj0r1MQKvhNTJX33dHO1HuJEOufkb7dV+C8jbIt3BFATDfR89FNgH3WhgcwPj
	BKykh2uK0N0a8aMkhbNgIpAFv7f627nwpMVCtuT5XfNKaKou0+jDJx+CsJCwhWFomBmwSbJEftHXT
	Az2kmw8txHzhclN9Vi1iAnnzj5OIsIX4+sFwf5V6vGRDvnsgr4T6pztyLIfqBm+/OayUZnTKJKq19
	JKqZhBV5RODEtYPVc9Ui0ULBUuDVZflL0y72gJS/4jlEBaPoQTw+R/NucQ3As/OXDzE8mbUsnCRs8
	/O+KkcHEWnZ5wpugNtew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiBEg-000000050N3-2Mhh;
	Fri, 10 Jul 2026 13:25:46 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wiBEd-000000050M5-3zh5
	for linux-phy@lists.infradead.org;
	Fri, 10 Jul 2026 13:25:45 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66AD6PbH871571
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 13:25:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FBF3onLMzZRTUHdMnf3N7vvKlSUcundPt3GHZSnwV2k=; b=JFrGLyTKe0GzNCTV
	69/HesZMfdEvUyfl/L1J+JFJ+Ot6aqQBpLM7kHMUDKnSFj5ZpC3GnywVyIv3ul+f
	VbFWhuzvJYI/IDLM9qtD8zs2Px0nFPR8mIIUiGeKjPVp3S9WD9oq5RgZE+GAAqlR
	MuYj3xIa1Y7KojhN8sFlBajy9obeufFnb7AKcJ4GmvXqp7FQu6hUQF9LwuP52Biy
	uBqqm0GBglu0kyrUiAcY8FDRFCWbD6NaXnd1tCA88LBfaogRZBQz1wCbGUsxH/cw
	cAcuSXOj0dyHAB/VoTVBNexqmmc7fDR9upeQU0/qyjFDI4WEMeSFDYdyIld3c5A4
	CiqxOg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4faxyg8kny-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 13:25:42 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8e8e83314abso3233396d6.3
        for <linux-phy@lists.infradead.org>; Fri, 10 Jul 2026 06:25:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783689942; x=1784294742; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FBF3onLMzZRTUHdMnf3N7vvKlSUcundPt3GHZSnwV2k=;
        b=fog+HQi5aR9xdXS1quLxKc/rUEa2IOj7NWk+ZuZoxOyyB+NxWNPiYb7WLzzaT0TYGY
         YcIYeElZgsNQ3rhien4+mnDVjotADzjhAbJxskhzL+HoxwlinbpGgjg/yNJW6BQqpBPx
         oabJLaerON3FiWFt6k2dmhv9IabyPPbAPyy47KWZrliW9KuiTpBgKtOGhwbTNxkwQTKO
         dL4+hpoMQI/EpyfZgzXwyjXQJX+Y5NN2w8VTy9oEB2aOlG0kKWLmVgu3LXp1LPh2CPOJ
         7z2VQAfweHt00C0oiNOvkfCDYyH+BSCNX5ibogRMMySSl/LuXiyhiR55HZiEjADR/J59
         +IjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783689942; x=1784294742;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=FBF3onLMzZRTUHdMnf3N7vvKlSUcundPt3GHZSnwV2k=;
        b=eJy3BV4d53fp4kNHqfWqk48Xf7/H7qiD0CYNG1ZPkEF3wDvROIy7GvzMq6Xyii128S
         jcULEHUvglrRaeAWcAJBpWH1d2FafO58Cli8FCVLJM3pbBXLDlAsI3XUgZiefo8mm1jL
         WaaV0udkUkqHd6bjqZB7HS6qSWmZ9Mzg9D2gLOqcAv0bbs9GwWkWCyaL27it+wMuB4B2
         M+xudjyvpotZaGdm3GHyx18vyAOgGRrwwa5QqSdeHJZgQjYChcX9PtPrSt8m3ZMRLBJU
         cwq8lTNuhRCWmwqFEpREHClCTOLfyLSFYXTHUJG1SId0ao0K83e6gGu5jt4d/9qfITf9
         LgNA==
X-Forwarded-Encrypted: i=1; AHgh+Ro+D07FoP3ih2+6atehzJ4YhHPHu0vQuUURMlZ0hASPNgKOX2kLSrs0jG1UuvYahJDEukks6FxNIXs=@lists.infradead.org
X-Gm-Message-State: AOJu0Yw6RJQ2rL/Bg7d75h+18BTaGZUEWVH9SMx8+UstxKIQjZ5NsG6r
	lkSSgMAaEgwA/D6bJ/e8UhuguQBkn6yz6+rk3WtUcAj+znt+LkGvRj6N8kyJ0xcNp0U8qXL/7wT
	m6erYQfGQg1j1bEfRKljkoGerLs2QDGu9lFwr/YNXJcYTzt5zvGXkFXxxhsvkSUTJ9gP8
X-Gm-Gg: AfdE7cl2AL3wiK9166HkmDWtgXIJJ+NdrPKQgTuwl+Xr8PcMfi2//e0nNAgwJmaiuOg
	MQvCJONbFxAs4frQzixe/sgGS/XrzjdT0MDilYVSUkjVwHDV91LrbyLD7TL0JLZW4wOya1d82qf
	EPJh55maEwN8zbAndv7CgMOwxFHVRl930SU7vkmCdp58FdnhMFtaxrPpOHX4VdPN5itpgjinu1s
	DNqYGwzy6bAWe9I+P9Dcg1SJBKHUkSrFr+KBvD2vib913sE26RyvmXWeP9E6/kQIEeRQwL+ENNX
	5F3aH+DFxzz8yu9MJ7uTMUPBxs4ua1rhp1mUG10pnbkxz6iKzYuUyDdWo0eadVHZM5lG25xWsnb
	Z+rKok18zLrPwZiRSJ+A2Ynq59cg+b8GB9+8=
X-Received: by 2002:a05:6214:440a:b0:8f1:ce6c:1385 with SMTP id 6a1803df08f44-8fec6244c20mr100585436d6.4.1783689941863;
        Fri, 10 Jul 2026 06:25:41 -0700 (PDT)
X-Received: by 2002:a05:6214:440a:b0:8f1:ce6c:1385 with SMTP id 6a1803df08f44-8fec6244c20mr100585036d6.4.1783689941392;
        Fri, 10 Jul 2026 06:25:41 -0700 (PDT)
Received: from [192.168.120.193] ([178.235.128.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-69aa6dba523sm5449418a12.0.2026.07.10.06.25.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Jul 2026 06:25:40 -0700 (PDT)
Message-ID: <f83556e7-dbb1-4926-a2a0-4690cdbad941@oss.qualcomm.com>
Date: Fri, 10 Jul 2026 15:25:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 9/9] arm64: dts: qcom: glymur: Wire PCIe3a/3b to
 shared Gen5x8 PHY
To: Qiang Yu <qiang.yu@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260518-link_mode_0519-v4-0-269cd73cc5d1@oss.qualcomm.com>
 <20260518-link_mode_0519-v4-9-269cd73cc5d1@oss.qualcomm.com>
 <ab21f1c7-f861-4961-9287-84cae280d8c1@oss.qualcomm.com>
 <akH9LKxqhciznM2x@hu-qianyu-lv.qualcomm.com>
 <ae2e1bdd-59b0-4ff7-bd6f-ddd57267c2d9@oss.qualcomm.com>
 <alBWrK8X7fW+UC7L@hu-qianyu-lv.qualcomm.com>
 <6802dc29-d783-40df-bbb8-8b2dbd94be29@oss.qualcomm.com>
 <alDvnSiplhEg2yhD@hu-qianyu-lv.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <alDvnSiplhEg2yhD@hu-qianyu-lv.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7KPSmwh_hiaCrgFfjSaS8nas01Hk26r-
X-Authority-Analysis: v=2.4 cv=PLg/P/qC c=1 sm=1 tr=0 ts=6a50f2d6 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=PRfkaYvzSr8QmIIGAkY2Sg==:17
 a=IkcTkHD0fZMA:10 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22
 a=3ei8xVDPt9LJxyTjLcQA:9 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzEwMDEzMyBTYWx0ZWRfX0pirfjSaYEY9
 eDzZHTpcyzhu+y46NFMcptyvUh7WR251i03qme3wsBQN6GCCSUU+6mtReqqko0GNd/Whkq7FhrB
 MreyOmrp+pYtg1pn0DB2D6e84KKTxWY=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzEwMDEzMyBTYWx0ZWRfXyZc4niZf4E2d
 D9aYwDiXXnZOBJVw/ml/KGeaw1ZhmM+llDuJ4uzmCYZinfr/qEioj697j5+42lo5i/6hUPoP23h
 OL3uLcF7s+qW5Dao/ZtwuFx/59lVD6oLL/LN2Rp75fKOdDbWYJ3TG5+AE1StiwNRJWix1lb5XtX
 Bjidh1KtQjr4nZtmGRmNuvbvajQdXRgUFCLR8j8TwlrzBXosWaI8mA9r0xCf6U1NTvd+dxe54Ix
 lWBYNagp4niY+yH6mrd114hmsoxg5tYXgpnqJ1bfauXONyIxTJ2cf8wVnhJN6jyTK4eJaYv9hvF
 bB4ZHK0h4tLgJOSx5RzCL244YIkuTyZgE5Un2wpVoW6iR+hzHacxlBecFqUK8h9JnfYLvfHlscS
 0ZT6j8LZzX+HlbxRwthAZWvuLzrzoqbwFgKKi7meKEeopN2oXk2zE4Iy9mqYEblTiRndtVV2pBd
 wLO6ye/1/+WE1hkcRdA==
X-Proofpoint-GUID: 7KPSmwh_hiaCrgFfjSaS8nas01Hk26r-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-10_03,2026-07-10_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2606150000
 definitions=main-2607100133
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260710_062544_116661_6C2FAD5B 
X-CRM114-Status: GOOD (  17.72  )
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

On 7/10/26 3:11 PM, Qiang Yu wrote:
> On Fri, Jul 10, 2026 at 10:44:20AM +0200, Konrad Dybcio wrote:
>> On 7/10/26 4:19 AM, Qiang Yu wrote:
>>> On Mon, Jun 29, 2026 at 11:20:07AM +0200, Konrad Dybcio wrote:
>>>> On 6/29/26 7:05 AM, Qiang Yu wrote:
>>>>> On Wed, Jun 17, 2026 at 01:19:49PM +0200, Konrad Dybcio wrote:
>>>>>> On 5/19/26 7:47 AM, Qiang Yu wrote:
>>>>>>> Glymur PCIe3 uses a single shared Gen5x8 QMP PHY block. Model PCIe3a and
>>>>>>> PCIe3b as consumers of that shared PHY provider instead of separate PHY
>>>>>>> nodes.

[...]

>>>>>>> +			linux,pci-domain = <3>;
>>>>>>> +			num-lanes = <8>;
>>>>>>
>>>>>> Is it fine to keep num-lanes 8 here even for configurations with
>>>>>> bifurcated PHY?
>>>>>>
>>>>>> I would assume so, given essentially this is a x8 host, whose 4
>>>>>> lanes may simply be effectively NC 
>>>>>>
>>>>> Actually, on existing platforms, the PCIe3a and PCIe3b controllers are
>>>>> never enabled at the same time. When PCIe3a is exposed, it is always in an
>>>>> x8 slot. But if we have a x4+x4 platform in future, we can simply override
>>>>> num-lanes to 4 in the board.dts.
>>>>
>>>> My question is whether that will be necessary - if yes, sure, we
>>>> can do it, but if not, we can conclude on this early and not have
>>>> to fight over it in a couple months
>>>>
>>> I think we do need to override it in that case. If both PCIe3a and PCIe3b
>>> are enabled in x4+x4 mode but PCIe3a keeps num-lanes = <8>, userspace
>>> will see an 8-lane slot. If an x8-capable EP is connected to that slot,
>>> both ends will advertise x8 support, but the link is up at x4. That looks
>>> like a genuine bug from the user's point of view.
>>
>> Do we know what's advertised on x86 PCs with bifurcated lanes?
>>
> On QCB, it advertise x8. On CRD, PCIe3a is hidden.

No no, I meant to ask whether we know what the userspace gets to see on
e.g. an AMD system with a bifurcated slot. I would expect that LnkCap
may report a different value, but not necessarily. I would assume we
should probably mimic whatever that does, unless the spec takes a
stance on what should be done.

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
