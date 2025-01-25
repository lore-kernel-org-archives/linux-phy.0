Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FE1AC0218C
	for <linux-phy@archiver.kernel.org>; Sat, 25 Jan 2025 13:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHFOEcIg52PP9xh2vqobO/cXgiyGffNxLgXD5Ssj5R4=; b=JlZ3C0POqCT7RD
	Ay7cXK6L0k6eO3cKtRujyZRean/0zde45WyzE9RV0T50dWp0BnAGzCMPr7Rgff61YqP1LoYKoBbaa
	Ww4lkGLSoTzo2SPajADcc/g2BrbWBsZP9r8nihFUDcdYeLCwSo1MR5RsNu/d1+uuaGSI8D+4586Gf
	/DL/AbHuACRn3Buwtiy6EZkUGHXK3cKx7w6jO+OIXT9X/TIORiT8xmx0dr8MJgvU8xAw8K6+X6Eb7
	RAXkmTT2kM8D/qdcKD21WVY0QQWE8TbN9YhBW97++olTCEM3uHph7KHiv2KZ6hB4a8GdBS3Rq38mx
	P7Jr/j74+gG6pVNyoXaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tbfwG-0000000GQJ7-2JrV;
	Sat, 25 Jan 2025 13:11:04 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tbfwE-0000000GQIj-0qXU
	for linux-phy@lists.infradead.org;
	Sat, 25 Jan 2025 13:11:03 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50PC1361032229
	for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 13:11:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IbYpYco5oc1eP1haET1D41v9RRtkLAc4rtmVyB5yIPE=; b=lZAOzWGVCRW957K5
	z3yr9k8LHjh3Uuz3g9wWDeuGAEaStwm46zi0vqxaphXB76jih1Biog6Sd275Q5bH
	kZGcK3U3IR0Je2Cd6hnnhR54Q545JAo+lcO8mhcx5YL/fpwzYroH0o2nPGHeo5gX
	uckx+FMU3d2W2NHuqi92UKQJvU6BVYH71OR3rx29h5TMz4IADfGwHB4qZ8E14Ufz
	0cZPyNxD7NAAxPvEC9mTTI+Z87ylc3+LP7XQcd1jrpMVxgmRZ0tXX6iymPzANxT+
	2rbSCGe5eUgTVxwwJEo5obFRzHHQCmumj5SC46Ke/Htk3B9tG7TsO8A3FhD8TlVr
	580v2A==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44cs1prhh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 13:10:59 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467975f1b53so7506371cf.3
        for <linux-phy@lists.infradead.org>; Sat, 25 Jan 2025 05:10:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737810659; x=1738415459;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IbYpYco5oc1eP1haET1D41v9RRtkLAc4rtmVyB5yIPE=;
        b=I4PpfeihjiEJNFuz10fnpuTWQLddvmM+FIJ4oo1YhPO+3E5Z2VmEnC1bdL4ilhYqoa
         AhpYgm7UbQecrjvQ+Fuq+6v6uMOShaY6F7IeygNZztyawwarSORP+Qku2ZoTTdFA3zLn
         BLJuN0IkeHzttbVW6yvKvnoejh8v0xK/qeVdMiB0QdUiLzEm8bA51f20H26zOx0yRik3
         r/ibdyTCpux/7SK4aekGgRKxVYPiJFbbgVix0YlSB8lxr4xWZnKWNc3dRVW/eHAQoXMP
         rXk27gBzr90aQKPpkvyizXAUyySFABUbGE5woKPIJDwsbzwv0qwKvCqTUt1lGHraSWXw
         dSBg==
X-Forwarded-Encrypted: i=1; AJvYcCVk+Sp/hcnhvgnxvypafbIEpt4DT0Ssv3OUgvI3DOmieT7M4KJjv002nVpL9/Lkq1h5Q7xhjHNlYEE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyXonyKbcq/HRGtVArDogbU9br/nGEQDocfXtEFSAK6o2ciJLc9
	rlNYVPSSiSJsWf0uEeBLPnRfnGaAi+bdoMmkw34z0jLtnIw8deJy4o8MKEApeoSyfZhuwPb5rVw
	31XNPjFooYHcXM4hlUKjabyPdPxuD5n9ypE0dPSllvu80mBewkaxtCoTX8apG0Bax
X-Gm-Gg: ASbGncuraUmP4mRC7WNfoiEqJyBimwLeauG2naUlm6dTK+vUERki+TecziKfiOThQqU
	yloz+BtgCcS8A6031vK5dldXTwfPC4l3aq9JT2vWDm3dDKF8Hh/eDF+8fAeYiSBxwoiuM/991m1
	HCwxNMX9eoy1VSou36HqXdunl7/MmGta5GyDnlWCViNnm/iOipInepobdmsIvZzY7mR4gkYoE/q
	in8QGVmvmBGYdqkrp41CTZkHXqshUqbcNzY+Bs+h2tlb5SkPBNC569bkedbLPaoWgmgfgEsJQUi
	sCczH73oX5eMemzMqXHnhTYXQBXjG9p7aE+M0wMCa/fvQQ5GL5h2BWXA+M8=
X-Received: by 2002:a05:622a:1344:b0:467:5fd2:9963 with SMTP id d75a77b69052e-46e12a4ff41mr165924441cf.6.1737810658878;
        Sat, 25 Jan 2025 05:10:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4DzQuJrrCIonbiD5W8KeMIpBaQuLve9eqF9M9kMGq8GJIRagIa0plXcCkwiQA3uVCezQzyw==
X-Received: by 2002:a05:622a:1344:b0:467:5fd2:9963 with SMTP id d75a77b69052e-46e12a4ff41mr165924181cf.6.1737810658361;
        Sat, 25 Jan 2025 05:10:58 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dc1863ae37sm2658621a12.41.2025.01.25.05.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 05:10:57 -0800 (PST)
Message-ID: <88c29161-17a8-40c6-a94b-c894de15ca37@oss.qualcomm.com>
Date: Sat, 25 Jan 2025 14:10:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] phy: qcom: qmp-pcie: Add PHY register retention
 support
To: Manivannan Sadhasivam <mani@kernel.org>,
        Qiang Yu <quic_qianyu@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        "Wenbin Yao (Consultant)" <quic_wenbyao@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, p.zabel@pengutronix.de, abel.vesa@linaro.org,
        neil.armstrong@linaro.org, manivannan.sadhasivam@linaro.org,
        quic_devipriy@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org
References: <20250121094140.4006801-1-quic_wenbyao@quicinc.com>
 <20250121094140.4006801-3-quic_wenbyao@quicinc.com>
 <CAA8EJppXQpDrdXzJsTE7HWs=POt7yFAw0JVZFabN6Ks3fhZiWQ@mail.gmail.com>
 <a2cc5a5a-6cbd-7564-a8df-8af2a652de2f@quicinc.com>
 <ya27ma6iah7ts6sj35payj6ek4z7m6y5v4pnxd6wtqrp3cbyta@ypvrzwa4bnfv>
 <188a9efd-718e-4ac5-b89a-29f2713e1dba@quicinc.com>
 <20250124070829.oar3hlkshkpam57d@thinkpad>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250124070829.oar3hlkshkpam57d@thinkpad>
X-Proofpoint-GUID: miWvAQtJN-H6yu4QfXkLyu8CLb-m8kWj
X-Proofpoint-ORIG-GUID: miWvAQtJN-H6yu4QfXkLyu8CLb-m8kWj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-25_05,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 mlxscore=0 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0
 malwarescore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2411120000 definitions=main-2501250095
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250125_051102_381414_D98AE89C 
X-CRM114-Status: GOOD (  39.10  )
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

On 24.01.2025 8:08 AM, Manivannan Sadhasivam wrote:
> + Mayank (with whom I discussed this topic internally)
> 
> On Fri, Jan 24, 2025 at 02:22:01PM +0800, Qiang Yu wrote:
>>
>> On 1/22/2025 5:43 PM, Dmitry Baryshkov wrote:
>>> On Wed, Jan 22, 2025 at 03:17:39PM +0800, Wenbin Yao (Consultant) wrote:
>>>> On 1/21/2025 6:36 PM, Dmitry Baryshkov wrote:
>>>>> On Tue, 21 Jan 2025 at 11:43, Wenbin Yao <quic_wenbyao@quicinc.com> wrote:
>>>>>> From: Qiang Yu <quic_qianyu@quicinc.com>
>>>>>>
>>>>>> Currently, BCR reset and PHY register setting are mandatory for every port
>>>>>> before link training. However, some QCOM PCIe PHYs support no_csr reset.
>>>>>> Different than BCR reset that is used to reset entire PHY including
>>>>>> hardware and register, once no_csr reset is toggled, only PHY hardware will
>>>>>> be reset but PHY registers will be retained,
>>>>> I'm sorry, I can't parse this.
>>>> The difference between no_csr reset and bcr reset is that no_csr reset
>>>> doesn't reset the phy registers. If a phy is enabled in UEFI, its registers
>>>> are programed. After Linux boot up, the registers will not be reset but
>>>> keep the value programmed by UEFI if we only do no_csr reset, so we can
>>>> skip phy setting.
>>> Please fix capitalization of the abbreviations (PHY, BCR) and add
>>> similar text to the commit message.
>>>
>>>>>> which means PHY setting can
>>>>>> be skipped during PHY init if PCIe link was enabled in booltloader and only
>>>>>> no_csr is toggled after that.
>>>>>>
>>>>>> Hence, determine whether the PHY has been enabled in bootloader by
>>>>>> verifying QPHY_START_CTRL register. If it is programmed and no_csr reset is
>>>>>> present, skip BCR reset and PHY register setting, so that PCIe link can be
>>>>>> established with no_csr reset only.
>>>>> This doesn't tell us why we want to do so. The general rule is not to
>>>>> depend on the bootloaders at all. The reason is pretty simple: it is
>>>>> hard to update bootloaders, while it is relatively easy to update the
>>>>> kernel. If the hardware team issues any kind of changes to the
>>>>> programming tables, the kernel will get them earlier than the
>>>>> bootloader.

We're assuming that if a product has shipped, the sequences used to power up
the PHY in the bootloader (e.g. for NVMe) are already good.

If some tragedy happens and an erratum is needed, we can always introduce a
small override with the existing driver infrastructure (i.e. adding a new
entry with a couple registers worth of programming sequence, leaving the other
values in tact)


While updates to the PHY init sequences have happened in the past, I believe
they are mostly a result of oneOf:

* someone upstreaming a pre-release revision / premature release
* someone making a mistake when typing in the numbers

Although sometimes there may be an update that isn't a result of any dev fault.
It's worth to keep in mind certain values in there can be board specific, as
they affect the analog interface. But we haven't seen that being used much if
at all.

>>>> With this change, we don't need to upstream phy setting for all phys
>>>> support no_csr reset, this will save a great deal of efforts and simplify
>>>> the phy driver. Our goal is to remove proprietary PCIe firmware operations
>>>> from kernel. PHY is just the start and will be followed by controller,
>>>> clocks, regulators, etc. If program table need to be changed, the place to
>>>> do that will be UEFI.
>>> Well, that sounds like a very bad idea. Please don't do that. Linux
>>> kernel drivers should not depend on the UEFI or a bootloader. Unless
>>> there is a good reason for that, Linux should continue to be able to
>>> reset and program the PCIe PHY (as well as all other hw blocks).

While I personally like being able to look into what's being programmed
onto my hardware myself, this unfortunately does not scale, both from
maintainability and reviewability perspectives with tables that host
hundreds of essentially magic values.

Plus this approach makes it easier to extend to other OSes, without
polluting them with the same data.

>> I'm wondering if it's really necessary for Linux to be able to program the
>> PHY. Perhaps Linux should only care about common aspects defined by the
>> PCIe spec like bus scanning, BAR space allocation, and functions provided
>> by other PCIe capabilities. As for the specific operations that are
>> different on various platforms, it might be more appropriate for the
>> firmware to take care of them. This way, the responsibilities can be more
>> clearly divided, and the driver could potentially be
>> more streamlined.
>>
> 
> It is not necessary in an ideal world, but what we have seen is Qcom releasing
> updated PHY init sequence after upstreaming the initial PHY driver support. In
> that case, the devices with old firmware will become outdated unless the fw is
> updated (which is not straightforward compared to updating the kernel).
> 
> But, I do like this idea of reusing the PHY init sequence in the kernel. Though
> we cannot just do it for all platforms. Maybe we can enable it on platforms like
> compute starting from X1E and see how it goes? Just to minimize the impact if it
> didn't go well.

X1 is just the first of many here.

We can possibly move some existing ones over after confirming that:

a) the bootloader programs the PHYs at all
b) the values programmed are reasonable

on a case-by-case basis to ensure we're not regressing anything. Perhaps a
piece of code and a modparam could be added that would read out the values
present at boot and compare them to what the kernel has in store.


>> On the other hand, since the no_csr reset can retain register values,
>> maybe we should still make full use of it, even if we don't want to
>> rely on UEFI. For example, during runtime suspend/resume
>> (the D3cold -> D0 cycle)
> 
> D3Cold during runtime suspend in bizarre.

Very much so. But this extends to system suspend as well - we can still shave
a couple ms off the wakeup times if we can skip all the programming.

> 
>> , when re-initializing the PHY, same PHY
>> settings will be programmed again. This is a bit redundant.
>>
> 
> Hmm, what would happen if the CX collapse happens during system suspend? Will
> the PHY registers be retained?

PHYs are always(asterisk) backed by some flavor of MX instead

Konrad

-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
