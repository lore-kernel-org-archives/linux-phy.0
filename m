Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D4F2606A31D
	for <linux-phy@archiver.kernel.org>; Sat, 31 Oct 2026 14:14:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=CK2ow96u;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=RkfXQhcV;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=DuH0a6C6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6ESRKbgAsfWkMayUyPGYoKfZcRUJdkw49DmqIklkgE4=; b=CK2ow96u7pEjcLDTRi3cNq74WP
	YMd7kPLC89tbkFboDxPJummVxaUWSytyiudxgc8tbXejNYDqX4lzSI7CgcYCBjEIdptvpOhQqkjHw
	XTmY/mHnpYF5ESnk3mMYENUivM3pdh9sl1UI3jZR0PTFqKUeseanFtLQyflH9vvn0uZP66DrTvNZL
	A+qiWxn3KIxm/DXOsxtO66FaEXdyCHCzs6q33YdbLgeZwcpdy4mf/KTH10B9gtBJ7DbDLAkmSS6IK
	gQce9a5gc14tqROJrXaNTLFUUveG7HTJVUQb3r30AqmEr0GGEkwJG/cXheac5NuNmOIsHo9XWUhq1
	jkqDXlJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN9qi-0000000DOcC-2MAC;
	Sat, 31 Oct 2026 14:14:24 +0000
Received: from mx0a-0031df01.pphosted.com ([205.220.168.131])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xN9qf-0000000DObn-1vSi
	for linux-phy@lists.infradead.org;
	Sat, 31 Oct 2026 14:14:22 +0000
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69VCxw6x3173887
	for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 14:14:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2P97b9+pLX1rELgHYJetOViVYuqQ18+rtDceUL9B0Yk=; b=RkfXQhcV2Gc2FsIM
	BR+1NwXe/fEZC5914jTFgS9eht8hn9w1Do92CpuoWuxQuEzMsdsceHxcLIud85V7
	pSkUuhhhiHAzas02eJtr8LPgZTQnN5KZj7m3yUU0SRqyaeSLZ29WhnSZsS/eChOD
	7PyfnlYRQueaVJP+pm7HYbvMSavX9I7CcWM/U25oIpBZV+KeZ4/9uNh7Y38Vi5RQ
	IuhAUIECW/wsU5q3joWOigacgJvW0rqmvf4tGK7pZtfax1Hyo9lreBVk0VL3yvw+
	xyc0c3x/3QPaidHVxTd5cBS+GAQmsetE+pQWgaMy8/q6cgdmRDR4Bw/ahyCsw3qz
	152koA==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hn61fsjvm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 14:14:19 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-1acbaf81bebso1922339c88.1
        for <linux-phy@lists.infradead.org>; Sat, 31 Oct 2026 07:14:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1793456059; x=1794060859; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=2P97b9+pLX1rELgHYJetOViVYuqQ18+rtDceUL9B0Yk=;
        b=DuH0a6C6a/PrAWKvKGXpCKkqR+184vERj5e2Cbqag/wjn/v7jAbSZp6908aeH1Y5K+
         5+Ld3fZs4m0ioF2dqSZJlCn+U1AGYdCe+xTDqlD7ugDYUWyGYvIDxEXkiHpzwFS4tYZS
         1z6/3uAVd73f/r1JwCFOPvo6B4GDUkA6tjZXiiAP7ojDVgTeb5U8KkYPEPRH3mFxC1iE
         gD+8d5svYbU+zHaFmFd7jlY5D6l/K5BcPWcsIHzId9oh5OBWYpHJa0zQdNjlAwprl51f
         gmpofWh2K4IHR8pVNsIMVbDrKkkQOn1IjHyF3hT0wm1HnB5XlzbeubDsizK0V8YiKz5h
         PFiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793456059; x=1794060859;
        h=content-transfer-encoding:content-type:in-reply-to:content-language
         :references:cc:to:subject:from:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=2P97b9+pLX1rELgHYJetOViVYuqQ18+rtDceUL9B0Yk=;
        b=qvAqYhzX0acJzhUb4Ci6Km7ob1mklH6hi2nZZLsGlXv61ROihdDJ0puWkZG0P2zt0r
         ymI217csS3F/rLfYnYFhcnIkOWUD6K9OMB8m/RmKyhK2398XiV+AQsyZ3dOjSwYyXwNx
         fwraIoS9rrjpRQmOPwZxV1t382nretnAKg7gOZ6hoPKk7/a+nPeoI593upHz4EPXfSCW
         XvBiKhcn6G+TISH9e42AKaxMmLgZlaKYg3bkY+y6a2ceDwJXt1LeA+3CMoeAFX58M27K
         8SIEHZuAk64xReSMMVFmfEceEj3E3LMr93UyCZ19GxhPS4nRqV7hmGZahDptx/u3i0Ls
         o4Vw==
X-Forwarded-Encrypted: i=1; AKwUvBzT5wLX1e4xW5j4t6LuG59lAwPSwM0M8j4OpD78yvr+kcnFM2uV585gSD+0bnZS9XDDRCv0A8ASxFY=@lists.infradead.org
X-Gm-Message-State: AFq9FYIkcqmi0OZBd8bytxGoxZ99Db8O4L1CKC5T3gz8A3ge/CRquF0v
	gl9ZXeU1YCYy3yNq2pa7bm3HlbnB1HV8XbLb271vpuaz4pydM1yewXQmmsa3SsDnEOvwsRUck1Q
	0ZhcSlNW/8GUD9/VGGhGfyi/i01vgab1PTBWurZfLYjuw7pS7EqjFjLgCpFgcMrd3fypP
X-Gm-Gg: AYBFou3HTQzSff9oL87zjUYcYsoM2PHPosQ5VnnNSgHk99XajECcbzhRW4eDaqxsqZ1
	7iXBvExbuHcGMUxzxHKPDYZ6xMSb1mfhEIaPldwpjCHr5SZ8GyKN79EjYFQT5IShb4fKYdHihAC
	Wi2mTlZhGus/c5AYiWisFFn4sTHumEpnPzJhQ026tJKRGT255l/vQ2aQvTVZwzsOxcvjBGlxNEj
	KqBdLfRJoRfJAfgE+j9+NoCB4yJId1rPpTkMWRGy0aN1GE0GsA2FS8Lv0vAMratsPEr5b5BdjsD
	7FikaiYj343SfAmuLpm2vG6KC6z/WicaDSuAnMcq557oBq+pGs/j1AOxO6+gtrfExfdOxWt2rTV
	XVomKXYH7G4U49o0vPuXXBmM2ffX3b0VG46dXLwk1rHymL04OZuN/x2Fb5Us9DfgKySGvOUseir
	Q=
X-Received: by 2002:a05:7022:7f13:b0:144:eab0:9cbc with SMTP id a92af1059eb24-1ac5e8dea62mr7118300c88.37.1793456058828;
        Sat, 31 Oct 2026 07:14:18 -0700 (PDT)
X-Received: by 2002:a05:7022:7f13:b0:144:eab0:9cbc with SMTP id a92af1059eb24-1ac5e8dea62mr7118252c88.37.1793456058014;
        Sat, 31 Oct 2026 07:14:18 -0700 (PDT)
Received: from [192.168.1.6] ([115.98.177.53])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1ac192c2e9dsm21015339c88.9.2026.10.31.07.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2026 07:14:17 -0700 (PDT)
Message-ID: <d35b7934-54e7-425b-a223-570512be0374@oss.qualcomm.com>
Date: Sat, 31 Oct 2026 19:44:08 +0530
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Nihal Kumar Gupta <nihal.gupta@oss.qualcomm.com>
Subject: Re: [PATCH v2 3/7] media: qcom: camss: Allow CSI2 PHY devices without
 CSIPHY resources
To: Vladimir Zapolskiy <vz@kernel.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abelvesa@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        linux-media@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, linux-phy@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Suresh Vankadara <svankada@qti.qualcomm.com>,
        Vikram Sharma <vikram.sharma@oss.qualcomm.com>
References: <20261026224957.1115370-1-vz@kernel.org>
 <20261026224957.1115370-4-vz@kernel.org>
 <CAFEp6-16WAoyS+aY2BzPknsMtHa1cSfVYNmYvTKHm_MWqqW_ag@mail.gmail.com>
 <271ccc9b-ccf1-4254-9664-2f00b504a5a9@kernel.org>
Content-Language: en-US
In-Reply-To: <271ccc9b-ccf1-4254-9664-2f00b504a5a9@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDMxMDA1NiBTYWx0ZWRfX/1haB7sVflUm
 FgjBHqpJtloNJ86OxMnABGyiW8T+4zmSOwdcmbMXHvaeyXxo244aX3ptrXvML6doaF9RUDPA+Gc
 W1tXJFGG+/5rakorXW6m14qb6L31qGk=
X-Authority-Analysis: v=2.4 cv=V/LoQuni c=1 sm=1 tr=0 ts=6ae5f7bb cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=iaXPdgsK/hfklW56b25dCw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=eoimf2acIAo5FJnRuUoq:22
 a=VwQbUJbxAAAA:8 a=tzcnicmHaCEtZrSMFQwA:9 a=QEXdDO2ut3YA:10
 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: ML8KX97HAj7qdq2hGWryV3SELZ6geMNG
X-Proofpoint-ORIG-GUID: ML8KX97HAj7qdq2hGWryV3SELZ6geMNG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDMxMDA1NiBTYWx0ZWRfX8T9//oiPeacM
 bIDvl76Uk8MWw8WwF7qXlUjywuE+EaYv00K05DLKQjX3uz9vdOJEK1gtUuKqxIW+lpxbjbt/RjU
 OC6dtYdcnPrDpWeieNwNbfC/LWuWZ1LO/JepralmZHYUOdPJ3mGR07zjm5AA3QF89mG/Zr8OMeN
 ppZF6vEnWOLKrFR2dxPtfd/cxAip7CMcmsTR+PCG8GsCV+jj5/Fj2jxtdxYxN8WsTB38xMfWHZH
 qtL7ALJqegQNuExfM+XnmHNCog/B0z0YBVsKY1h3Oo03ZoFoKTeIDWdes9W3PKbN+XGYNmyHzKn
 mtbO6m8uNXgPdIZfvWaUzPR4NAkfY/nWj99DwyCvZqkgAxYDLhjxsgrflwIxu7BFAkLmBuFxon5
 bYgQDHukN4mKmdHef1m4UbsXzlIGu5GqlbHspN3nZYzSUOK4BhA2BrgxsTyOexQMcb9HTwcgnck
 RRl4VUYcplLECgRf36g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.138,FMLib:17.12.100.49
 definitions=2026-10-31_03,2026-10-21_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610300000 definitions=main-2610310056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261031_071421_511273_E4EC26C3 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-5.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1



On 27-10-2026 22:30, Vladimir Zapolskiy wrote:
> Please note that 'csiphy_res_phy' was introduced a few lines above
> by this change, it's only purpose is to provide the needed supported
> media formats, and this is unavoidable.
> 

Right, agreed. Glymur uses the non-legacy path, but that path still uses
camss->res->csiphy_res in msm_csiphy_subdev_init(), at least to get the
CSIPHY id and supported media formats. That is why Glymur currently has
a non-NULL csiphy_res even though the actual PHY programming is handled
by the standalone CSI2 PHY driver.

> This change follows the assumption that pixel formats from all
> non-legacy PHYs are SDM845 compatible, that's true for this platform,
> it is expected to be true for the most of approaching non-legacy
> platforms, and on demand it may be changed later on.
> 
> The current form likely is the most compact and the least invasive
> change, which gets to the point of supporting CAMSS on platforms
> with no CSIPHY resources given in the CAMSS driver.
> 
> For instance, note, the recently proposed Glymur CAMSS [1] references
> X1E CSIPHY resources, which is actually incorrect, since there is
> no "csiphyX" I/O resources anymore for Glymur. This change can be
> reused for Glymur as well, and its reference to X1E CSIPHYs can be
> dropped, but any better proposal or improvement are welcome.

The intention was not to describe CAMSS-owned CSIPHY I/O resources for
Glymur. This also follows the earlier suggestion to reuse/fall back
to the Hamoa/X1E CAMSS description where possible:

https://lore.kernel.org/all/lepv7cgykrylficddcnnbii3kzxsiei3itcwc4ibq53s33rogi@ndnf7zrtu5ex/

Moving Glymur to .csiphy_res = NULL is possible, but with this fallback
the CSIPHY id comes from the CAMSS port number. Since Glymur uses
CSIPHY ids 0, 1 and 4, that would also require Glymur-specific driver
data and DT/binding updates to describe CSIPHY4 as CAMSS port 4.

Bryan, Loic, do you think we need that change now, or should Glymur keep
the current approach for this DTS series?

-- 
Regards,
Nihal Kumar Gupta


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
