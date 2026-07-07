Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C498C43458
	for <linux-phy@archiver.kernel.org>; Tue,  7 Jul 2026 05:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vx4rjsHDbM/dnN3S1Xp2Gij2FrZLfRajkD4VakAiEzc=; b=tJBICtHiME/4sk
	afuz6sjQ0wVve2tpxdqZjzkQk2RcgYEVHzMdEKQSSrIoZ+7L2QFQUGEEQwAPHUOK5+Xwer/GQxfpK
	c+ElEwMPAnKplRGX0M/2/h9CC9YiRSS4ypJFllsl3CIJ1lmoNT3fBrx14C/V5pDPc9XA8FpuhGC2C
	rbh3Q3P89ypoqYrrudFmDb7F2k61X+TGn4WEfdgHyaIULr1dpQQc2E/Fqteu96XCZ0PFV/VYN8Llq
	rvYTz7CAsezZ9XLJKOqfo7rAkcrYsNt8VpePx8NqmYbLyMOc24MPVYqaZIgIZQwLAtJ7kszvU+iTR
	Mc9NfG2cfaohkMHMsasw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyZj-0000000E8qK-48Ja;
	Tue, 07 Jul 2026 05:42:32 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgyZg-0000000E8pf-3l7U
	for linux-phy@lists.infradead.org;
	Tue, 07 Jul 2026 05:42:30 +0000
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 66749W2K2646404
	for <linux-phy@lists.infradead.org>; Tue, 7 Jul 2026 05:42:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eAzXorLcGHEyoWUBEpjb+W55R9Exavz3+bJHHBPcDIY=; b=b7z4dGHlOeLApk4H
	sFQPhYMYmOHOfJZuCM1WMZ3T5QYfOjM2C4mczoEqaW5VvOMfjQsNfMCexXmuEhoy
	nsOjD+LPuku3K5b2IbWjRPioFk/0DhCh62uuyxV9/3p1TRVQreQA3qioeNLpH/03
	fpKaoYenWDNnpxGnggSIeo4TqPpA9rRvnefkMufPwE/UtIPM5m2EFpEvk6Fe4YFZ
	O/28qjpmHD0d8GDiTDl1gS/1R0eVubo9FqiF2tVrZ8HWQ5nGTY+RxYoFBXBUnzvD
	yJoe51nRCwy7H4d/f0Ii5PMH2jqy/GdpFpau+IhD3d/c9ReNiQ6e3oPJotT34NzL
	QGBK/Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4f88h9csr7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 07 Jul 2026 05:42:27 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-8423f544944so2983861b3a.3
        for <linux-phy@lists.infradead.org>; Mon, 06 Jul 2026 22:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1783402947; x=1784007747; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=eAzXorLcGHEyoWUBEpjb+W55R9Exavz3+bJHHBPcDIY=;
        b=ajTy+rkFiKjFDBjXOmBqos3fX8mTR93wWcV3HIiRu7VB7XNcYpnBTvCuFieyZu8SuY
         1QabunM3ZN64G5RDrYdJxcOztiDQbAEy4QRHziV1/N1aFrXc/kqXBR98+7sR7AkSkQLu
         9Iq35p/Id1J8vELj9N0qwpRd7tWB6Y6Qy9xJCWWoGqLGxhCWQmi4wW1tE2Ejf6g19kFF
         bYOQb9/sjjCIMRHi958UfVKoaKojx5A//r+kV3jxvlSLQQBE9749vtlDx0ruScgTdEss
         lax2ioCJ03MR6FsaJ5qKjcFkuD3RM4Ao3MSTvSojdL3ilxci6DrGeKDNTeqXR4Eka3LL
         hP8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783402947; x=1784007747;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=eAzXorLcGHEyoWUBEpjb+W55R9Exavz3+bJHHBPcDIY=;
        b=NRK5kYuLymGc17e62fKz958D5jJr2CZIsDEy4C3a0aFk2X61GStyAJfwjkARh2VBt/
         hZRM3hEbWSKrjmVyhTsIk1ZNEGZay8qpOGJq/2ygiksFyT+wB+z1yTDBtfGTZnL6juQy
         KJzp8bA1TUhjYMaNydxUA3SdY7zYYL3qA+APh2Hoeb5kSbr9xZIEM3xCpvtM4GktQrMW
         5qQ0MRF+eoYzhXFR0j44ZUbvAkJebWlMQKL5o5+QjKzAjf/14IxNMyIAAmUORseqcBH5
         /hmd0HMzTymfsmt1Hto98CKK9YmtbUcuYI/NV9yKdqJwcMIt0OATRdiwZIFhWzGnxpIJ
         IShQ==
X-Forwarded-Encrypted: i=1; AHgh+Rr+vbybzAL71jT1bTCXIt67QR28uYkCNKeEqoFdeLWGgUf07TsEHWgqbdwV9M0mz90Rl3iR3kDsb4Q=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx4mecyGWMDDKe/lKu2e6VfOGQMnfYjCLs3/x1lRDMiuRemYb/z
	9Db7eIq4x1W60vMF7jsbryssE4b/sd7bqX41MUlUEiF7dATyGA7Ja5ey7zDoN7Pcl2Q3DRJjpo+
	wueAy1UEgiweB1g8+Rpd/RNRHSpNThdJ8RwzQpXfS/8m/uArkHN1hIJwP80UUCoG14f8b
X-Gm-Gg: AfdE7cnzY7cFktWZO5YvPQZKhn1g6uBA4+n6MKP0X77W2JuUdKA0hV+2nIw5bGKM5CL
	tJXS4ZaL4gKiVmQ0k1yn6O0KEAJyjm7xDw8pzQ05FUidsvflS2StWxwLZ1gct+2SGh4xxhcUqJp
	D+hWU4MicvJnuo39w7rJ/OIYqe44E9giG62CNGAo8y9Xww55+YdfDPJOIQcBVQKUN9H93P52Xem
	8uOp1PvCCB9fmegjZHpiWgKygd2Wrbs/XH3Kkr4XTlA1nCSnKF49Zf0aWj1cZDMpA26Nj146I8t
	yly4BY6J5tsksDBeaFdPANMgw0ea3mPPRK6x2DKvKj556bJEqnuxhSOCxdwELjXS8OP0jl8q8eb
	zC7yexjOOAiPEuVyZz8v129MQhawlUBxxTAsOWgb5T2Hom75sUFrXEHxp+43rh7lU9DJFaZ31du
	UMvt/E
X-Received: by 2002:a05:6a00:4091:b0:845:a435:a2eb with SMTP id d2e1a72fcca58-84826d3e479mr3223189b3a.31.1783402946552;
        Mon, 06 Jul 2026 22:42:26 -0700 (PDT)
X-Received: by 2002:a05:6a00:4091:b0:845:a435:a2eb with SMTP id d2e1a72fcca58-84826d3e479mr3223164b3a.31.1783402946056;
        Mon, 06 Jul 2026 22:42:26 -0700 (PDT)
Received: from ?IPV6:2405:201:c409:b03f:6d0b:bb83:7a67:4093? ([2405:201:c409:b03f:6d0b:bb83:7a67:4093])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-847f6d496besm4787914b3a.36.2026.07.06.22.42.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Jul 2026 22:42:25 -0700 (PDT)
Message-ID: <9f938b35-9102-486b-b4b8-0967b2aed1b1@oss.qualcomm.com>
Date: Tue, 7 Jul 2026 11:12:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/9] dt-bindings: PCI: Add bindings for endpoint gpios
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-phy@lists.infradead.org,
        linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Bartosz Golaszewski
 <brgl@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Helgaas <bhelgaas@google.com>
References: <20260701-shikra-upstream-v1-0-e1a721eb8943@oss.qualcomm.com>
 <20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com>
 <178285172702.288391.13610342196466613275.robh@kernel.org>
Content-Language: en-US
From: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
In-Reply-To: <178285172702.288391.13610342196466613275.robh@kernel.org>
X-Proofpoint-ORIG-GUID: sFL3qMMFnBPr4VSheAgD7sQU2VT5Ld_h
X-Proofpoint-Spam-Info: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX+bb2yDm4jz4Z
 R2z+tkIEps8cCoIGro92EnC9sbxzuInaOx76Ngd5p3eMKB5Aj78cYeeh11UsdC1OmUZv6KHhyx6
 zC55rsWGvW57ZSdpRxnK0MkrD8E22/E=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwNzA3MDA1MSBTYWx0ZWRfX7DYpsd37lBN8
 n1GfavfjOhKoAVZ1wrTXneAK8AiAgFy2Orm4XPWPFodLQPknZmzCgz284LLhyYxdPIT1MvzSNSr
 9pVwjA3zAcADQczX73BIaOseuOcZ1oM+0bBcdCO0DwEa7opCkjBCnMvA0GVaDAFtqhO5hpqHy8L
 AXzBNmsk51W7lFyY/JyeOUT8vPvJFeK004214cGkg9bx4K60CfpuEDS/TAgdDNGUh+O4kxDO9HE
 2xQKAXpeMlxrT/FIhMPqPQ5dxxzlZ6wgkxViZhruAnLQacbhLKhBbIhi7u3mRHiNCcDdC4XZ3WL
 DEmrx4o5QsIkEv4VPYtcHV1HMH4OPGC4E+VCW84NTVjTivlvC+Zn/GGp8x9CwJx9hDugpFVUqHm
 4tBUHD5QQCXxrlmF6SMgM/yU/UXoZv+1sTTAFNM5Leqm9h4uxySd3DYWj+4e1yNX8QJkQyuGuYu
 yNdqn7eRGPXj7Lw4iDg==
X-Proofpoint-GUID: sFL3qMMFnBPr4VSheAgD7sQU2VT5Ld_h
X-Authority-Analysis: v=2.4 cv=GulyPE1C c=1 sm=1 tr=0 ts=6a4c91c3 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=RAioF0-LDSMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=ZpdpYltYx_vBUK5n70dp:22 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=QcnDgq45NsFIHwn4wVcA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-07-07_01,2026-07-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 clxscore=1015 malwarescore=0 impostorscore=0
 priorityscore=1501 suspectscore=0 lowpriorityscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2606150000 definitions=main-2607070051
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_224229_057108_886F16CE 
X-CRM114-Status: GOOD (  17.56  )
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


On 7/1/2026 2:05 AM, Rob Herring (Arm) wrote:
> On Wed, 01 Jul 2026 00:32:45 +0530, Sushrut Shree Trivedi wrote:
>> Add devicetree bindings for TC9563 GPIO's which are
>> used to control endpoint power and reset.
>>
>> Signed-off-by: Sushrut Shree Trivedi <sushrut.trivedi@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/pci/toshiba,tc9563.yaml    | 22 +++++++++++++++++++++-
>>   1 file changed, 21 insertions(+), 1 deletion(-)
>>
> My bot found errors running 'make dt_binding_check' on your patch:
>
> yamllint warnings/errors:
> ./Documentation/devicetree/bindings/pci/toshiba,tc9563.yaml:32:9: [warning] wrong indentation: expected 4 but found 8 (indentation)
>
> dtschema/dtc warnings/errors:
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.kernel.org/project/devicetree/patch/20260701-shikra-upstream-v1-3-e1a721eb8943@oss.qualcomm.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.

ACK'd.

Sushrut

>

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
