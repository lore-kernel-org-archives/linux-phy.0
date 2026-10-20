Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93800606A335
	for <linux-phy@archiver.kernel.org>; Tue, 20 Oct 2026 22:02:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=keoZe20F;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=qualcomm.com header.i=@qualcomm.com header.a=rsa-sha256 header.s=qcppdkim1 header.b=LDY8IEa6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.a=rsa-sha256 header.s=google header.b=kRelJsLH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JwCe8dkShLsFdg75E9ObulL/6/v2yCE3b8m84Lay1ug=; b=keoZe20FUVYdlq
	iJA5oIKNrnIT9Sype43kg7x5O5ptKSryR/2nFH6zN8L21Z5gxERt47ySydIrO2I3jtSH7ujhhz5Os
	1grguxY3RY23XY3QnZTrR1X1OdPNwq4Cr78AvpUvMjO1yJthhoONnd1god8zsMAx44ZBlYN2B+46+
	AAxxKJ982YLxKgfR4EF2OwRoXV3Ws3T0calRj+3qpMqjg3RnMaXkhtVlwsbjHhJXyWO8U+5xiSKci
	iNySDK/uO1psdARGueKWcHHiou7+srQ5rbbyCR0uWuJPs6xYBezR34IHBUjLmUYm/R01mlVjLk7z1
	LUXMfj0WQ9gsSeSPzR/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJHv8-0000000Ajbj-0Wrn;
	Tue, 20 Oct 2026 22:02:58 +0000
Received: from mx0b-0031df01.pphosted.com ([205.220.180.131])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJHv4-0000000Ajb6-1eyP
	for linux-phy@lists.infradead.org;
	Tue, 20 Oct 2026 22:02:56 +0000
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 69KKtkqK2584176
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 22:02:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wKC3LSlwdLktv3Fue/Fi/u2yc2DjRK1grGd0eHjkzb4=; b=LDY8IEa6lDdsm2w3
	HqtUZtENLlOIbAWt9TMOBbwBYjuyYuMzwXJcCMlkh3d83vFKabVZ8W8dYsTlVByf
	Py7MKdIn1jF8WDtiFvYClIe1mV52trAeKPhynKB+8BaJEV/9K/ux1LZsveN4dYPW
	C+MeI/jO3lsS2tX9V6aWJUEfD9MkFM8TKTsoyFf1ImdgWS+LB3oM9JyYEgBL5JR/
	rS4xkfen0ATt8J2DUpPAOIIIgF+ufvgRt9PkHCkpT8kpePGDgE/9/s6QwMK/Z15f
	s8CgWWRZvZ0rYkCsE3Z4PYN813MWb8bL/vneGvk0vIm52NWoxo3diBEbm1+1kh5w
	a5Hdyg==
Received: from mail-dl1-f71.google.com (mail-dl1-f71.google.com [74.125.82.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4hed9v0u68-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 22:02:53 +0000 (GMT)
Received: by mail-dl1-f71.google.com with SMTP id a92af1059eb24-1663fb7e005so155367c88.0
        for <linux-phy@lists.infradead.org>; Tue, 20 Oct 2026 15:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1792533772; x=1793138572; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=wKC3LSlwdLktv3Fue/Fi/u2yc2DjRK1grGd0eHjkzb4=;
        b=kRelJsLH8xXRIyOAFJKQYDI+RkisSgeFYxMzXOE793joKH4dJ6ZzLjbpzY4AgoRu6v
         ajAinADPbiP8rpadkK0ARlXnCYivLlgDySfcRkt64BcVJnwuA+f14K63Uc1y2l+DHLyd
         92t0bCi6N5nMwhVFpt8IBKyWawJSnGeEm2rV0HFvt+bQJXuF0RRolso5jIbzuXMu6CUa
         rXaKW+S96SY8vdvdrpPx8WPGXp824GjppbeHcoj1oOkTquTk91hOQZkLPR13hlMVj5H0
         I2X16SIfdsXYWIux1yEzABEWtjnkxPBt3MsLShL0sfI3QS2GZFDR+4V/7C0cngRDPu7c
         XmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792533772; x=1793138572;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=wKC3LSlwdLktv3Fue/Fi/u2yc2DjRK1grGd0eHjkzb4=;
        b=XVopck0lJc1/aAjfi87DUB+0tbAYU/mxsYId8snbYXiS5JYjmCXOmnpe+H3wpKsjPF
         vbftutzulz5ma2mLCsFFg1EWesMjs6/KScGpo6Cb8ELFJRelnZ2iRulxKcW9cODMVF6z
         Srvhce9Vh8BvqNHxYV6kjRcCweaULEEUoIBDsk1KUlsacoUYaUiBZVdtWrkJx3EnNEzl
         9FlTj/zPIcEx5wbTgFO+JR3BR9o6DtfHqGgegnbE3vqe4q84Q1q3KgrrXCuCzpXPHnth
         tFcxIq5S7QRRXCZMpipnfKKR7QBsjBb4f+jHlAXf5Aub9OTM6l4SOy4IJmjHOop0zeuK
         i3UQ==
X-Forwarded-Encrypted: i=1; AKwUvBzeB5lqzqZERk6XL1lAhlrkzlS5DzDxIyOsi3a7Cb+NDITjQ3iRA3iqAHBzp87gDDVw4Nx0+jNJphM=@lists.infradead.org
X-Gm-Message-State: AFq9FYJFZP3J3C0Ic+fHMXHXkoHwuR6FVWm6CPQNIt8ykHCgvT3rdAGJ
	Tpt8mGfchEGk2zSb3x9vDUuyQkoSIq/XNO3JVQ7N1xeT8OaJrehayCVLJbB5uLqri9ebKL9Mg+E
	62ElGtFEmi7iN7zX0M+KTeNjxYdofurp1LQlVslHvU6IjTG5DpY82HraGAOHD1nCprYYR
X-Gm-Gg: AYBFou39eIsau+BP5wVUR/P+IM/d3vlIpvqomg+F3Cc32eLIfhcT/mFVNdrXfHqgAp9
	yMEqBckzk+s2edYAnaJta+3sRaFA72QaCETolXky/2CV5sWYqZed7u5SUIslV5BkN02b0YJNiBF
	ZskUJi9qRX37TITk+f+O8nifslhsAYYF8ehtj//FngjXiRTiHyl3mQqBMfyXA6yDZgAQJdlOGGg
	7h8EHEq9zHj3itYltrRxspFHh4/e9oLz4+8vxWJ3NQHCgEd2GG3LPK4RuiP+STSLH6e3RAvjVfU
	SkT2HOJO6dHxqRcOuGSIc/7vwXnH8aISbHvRBSOHgCwSH0D5EAIkoUxvHtDVUzWFvWuOmj/A29D
	aNiD4LU8FIl0q4UfhyLsxOX+IGDmUf10PpNaGPKq0HNRAXA/96YENxDBp
X-Received: by 2002:a05:701b:4286:10b0:16c:6459:35b1 with SMTP id a92af1059eb24-190a599b411mr185232c88.28.1792533772126;
        Tue, 20 Oct 2026 15:02:52 -0700 (PDT)
X-Received: by 2002:a05:701b:4286:10b0:16c:6459:35b1 with SMTP id a92af1059eb24-190a599b411mr185196c88.28.1792533771462;
        Tue, 20 Oct 2026 15:02:51 -0700 (PDT)
Received: from [10.71.181.181] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1903a180ca2sm1154475c88.6.2026.10.20.15.02.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2026 15:02:50 -0700 (PDT)
Message-ID: <8ae43c5b-b99b-43ff-a56f-19f4d5dbe176@oss.qualcomm.com>
Date: Tue, 20 Oct 2026 15:02:49 -0700
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/7] phy: qcom-mipi-csi2: Add sa8775p D-PHY support
To: Bryan O'Donoghue <bod@kernel.org>, vkoul@kernel.org, kishon@kernel.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        neil.armstrong@linaro.org, mani@kernel.org
Cc: gjorgji.rosikopulos@oss.qualcomm.com,
        hariram.purushothaman@oss.qualcomm.com, akapatra@quicinc.com,
        jigarkumar.zala@oss.qualcomm.com, loic.poulain@oss.qualcomm.com,
        vladimir.zapolskiy@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20261016235502.2274268-1-anusha.nandi@oss.qualcomm.com>
 <EKfYfLCfqnEg_PLe_TsBkAGryJgP_tA140u-0ZYSL9q5kInrAtoRCiugYV3C2PDDvYjxaeejuYK3gqzAT4FMXQ==@protonmail.internalid>
 <20261016235502.2274268-5-anusha.nandi@oss.qualcomm.com>
 <392642ad-3bac-48bc-9199-8c3923c588c2@kernel.org>
Content-Language: en-US
From: Anusha Arun Nandi <anusha.nandi@oss.qualcomm.com>
In-Reply-To: <392642ad-3bac-48bc-9199-8c3923c588c2@kernel.org>
X-Proofpoint-Spam-Info: AW1haW4tMjYxMDIwMDA4NyBTYWx0ZWRfX0/Nm/P9eqrkC
 XCt6YtvbQU5MtHvJiw9Wba//CNQKytNmHWqKg66FhKv2I4HXtVSxeSvPl4M25wXUhfKOt+/Ww8p
 p58ACqg02t3Eqoew+59ub5SLX5/CqHg=
X-Proofpoint-ORIG-GUID: 9BEC1HaKb3a_yvdvAzzln6LbWSZ8nW3b
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYxMDIwMDA4NyBTYWx0ZWRfX2Qo47WnuwYdr
 g2nbkjzDqxUZ01CO0xZlcAV9Lt7ZOzF8p6l8Qa51UJzPWmlYTS+/oVO5X4zU/pKjjDSoxYsbX5T
 MuO4Fml7nExxC0WEO18X8mo4H1WPGRR52hDVDKKmoUyRkxN9rLl8oR1NPt2OnDvZ+rKd8uU2kzf
 TIgsNwLgilxbEjWrRB2m7JfMhoeBMDxRoefXpB2PxA+CQcjkoOK3lai7OGO9qjybUl4UJO880l8
 +tXgrFWhvVQmnKIP4qrqS2XAgM2aRM6+XDV9PYYocLYbV4LjphNUkKc6bEIaYX8G2+H4tuxP2w7
 xRkJfENTLBel3LyGnHk99v61iUjTX/W7dzjfWVVYLzTmO5wBDK24nbQln8Ds9KWifC7PgaH5iEI
 eJEf2Go07Asv9ACSBIcgIv2/GEYTm6bOMkPAzE3XWaj2clYqeY4AXIDxkO0rnp8Q33iqWT4TcnH
 +STeQD+PWV4lJewFX2w==
X-Authority-Analysis: v=2.4 cv=I6zw19gg c=1 sm=1 tr=0 ts=6ad7e50d cx=c_pps
 a=JYo30EpNSr/tUYqK9jHPoA==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=660iZSQnnn4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=VjktAE_kRdQNXcrMly4A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=Fk4IpSoW4aLDllm1B1p-:22
X-Proofpoint-GUID: 9BEC1HaKb3a_yvdvAzzln6LbWSZ8nW3b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1176,Hydra:6.1.134,FMLib:17.12.100.49
 definitions=2026-10-20_04,2026-10-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2610190000 definitions=main-2610200087
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_150254_564716_45CFE5D6 
X-CRM114-Status: GOOD (  25.90  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQnJ5YW4sCgpUaGFuayB5b3UgZm9yIHRoZSBjb21tZW50cy4gTGV0IG1lIG1ha2UgdGhlIHBh
dGNoZXMgc3BlY2lmaWMgdG8gdGhlCmZ1bmN0aW9uYWxpdHkgYW5kIG1ha2UgaXQgbW9yZSBncmFu
dWxhciBpbiB0aGUgbmV4dCB2ZXJzaW9uIG9mIHRoZQpwYXRjaHNldC4KSSBhZ3JlZSBvcHBfY2xr
IGlzIHN1cHBvc2VkIHRvIGJlIG9wdGlvbmFsLCBJIHdpbGwgbWFrZSBhIHBhdGNoIGZvciBpdAph
cyB3ZWxsLgoKQmVzdCBSZWdhcmRzLApBbnVzaGEKCk9uIDEwLzE5LzIwMjYgMzowMSBBTSwgQnJ5
YW4gTydEb25vZ2h1ZSB3cm90ZToKPiBPbiAxNy8xMC8yMDI2IDAwOjU0LCBBbnVzaGEgQXJ1biBO
YW5kaSB3cm90ZToKPj4gVGhlIHRpbWVyLWNsb2NrIGxvb2t1cCBpbiBwaHlfcWNvbV9taXBpX2Nz
aTJfcHJvYmUoKSBhbmQgdGhlIE9QUAo+PiBjbGtuYW1lIHBhc3NlZCB0byBkZXZtX3BtX29wcF9z
ZXRfY2xrbmFtZSgpIHdlcmUgYm90aCBoYXJkY29kZWQKPj4gc3RyaW5nIGxpdGVyYWxzIHNpemVk
IHRvIHgxZTgwMTAwICgidGltZXIiLyJjb3JlIikuIEFkZAo+PiB0aW1lcl9jbGtfbmFtZS9vcHBf
Y2xrX25hbWUgdG8gc3RydWN0IG1pcGlfY3NpMnBoeV9zb2NfY2ZnIHNvIGVhY2gKPj4gU29DIGNh
biBkZWNsYXJlIGl0cyBvd24gY2xvY2stbmFtZSBzdHJpbmdzOyB4MWU4MDEwMCdzIHNvY19jZmcg
bm93Cj4+IGRlY2xhcmVzICJ0aW1lciIvImNvcmUiIGV4cGxpY2l0bHksIHdpdGggbm8gYmVoYXZp
b3VyIGNoYW5nZS4KPj4gU0E4Nzc1UCByZXVzZXMgdGhlIHNhbWUgInRpbWVyIi8iY29yZSIgbmFt
ZXMgYXMgeDFlODAxMDAgZm9yIHRoaXMKPj4gcGFpciBvZiBjbG9ja3MuCj4gCj4gTG9MIEkgaGFk
IHRoYXQgaW4gdGhlIGxhc3QgZGVzaWduIGFuZCByZXZpZXcgc2FpZCAiaGFyZCBjb2RlIGl0IiBo
YXBweQo+IHRvIGFncmVlIHdpdGggbXlzZWxmIGluIHRoZSBwYXN0LCBob3dldmVyIHRoaXMgY2hh
bmdlIHNob3VsZCBiZQo+IHN0YW5kYWxvbmUgYW5kIHByZWNlZGUgdGhlIExlbWFucyB3b3JrLgo+
IAo+PiBTQTg3NzVQJ3MgQ1NJUEhZIGhhcyBhIHNpbmdsZSBwb3dlci1kb21haW4sIHRoZSBUaXRh
biBUb3AgR0RTQywKPj4gbWF0Y2hpbmcgdGhlIGxlZ2FjeSBpbi10cmVlIENBTVNTIGRyaXZlcidz
IHNhODc3NXBfcmVzb3VyY2VzLnBkX25hbWUKPj4gPSAidG9wIiBhbmQgdGhlIGV4aXN0aW5nIGxl
bWFucy5kdHNpIGNhbXNzIG5vZGUuIExpa2UgeDFlODAxMDAncyBvd24KPj4gInRvcCIgZG9tYWlu
LCBpdCBpcyBub3QgT1BQLXNjYWxlZCwgb25seSBrZXB0IGVuYWJsZWQuCj4+Cj4+IFNpZ25lZC1v
ZmYtYnk6IEFudXNoYSBBcnVuIE5hbmRpPGFudXNoYS5uYW5kaUBvc3MucXVhbGNvbW0uY29tPgo+
PiAtLS0KPj4gwqAgLi4uL3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jwqDC
oMKgIHwgMTEyICsrKysrKysrKysrKysrKysrKwo+PiDCoCAuLi4vcGh5L3F1YWxjb21tL3BoeS1x
Y29tLW1pcGktY3NpMi1jb3JlLmPCoMKgwqAgfMKgwqAgNSArLQo+PiDCoCBkcml2ZXJzL3BoeS9x
dWFsY29tbS9waHktcWNvbS1taXBpLWNzaTIuaMKgwqDCoMKgIHzCoMKgIDQgKwo+PiDCoCAzIGZp
bGVzIGNoYW5nZWQsIDExOSBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5
LmMgYi8KPj4gZHJpdmVycy9waHkvcXVhbGNvbW0vcGh5LXFjb20tbWlwaS1jc2kyLTNwaC1kcGh5
LmMKPj4gaW5kZXggOTY2ZDc5Yzk4ZjliLi44NWU4OTIzNWY3YzkgMTAwNjQ0Cj4+IC0tLSBhL2Ry
aXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCj4+ICsrKyBi
L2RyaXZlcnMvcGh5L3F1YWxjb21tL3BoeS1xY29tLW1pcGktY3NpMi0zcGgtZHBoeS5jCj4+IEBA
IC0zODAsNiArMzgwLDExOCBAQCBjb25zdCBzdHJ1Y3QgbWlwaV9jc2kycGh5X3NvY19jZmcKPj4g
bWlwaV9jc2kyX2RwaHlfNG5tX3gxZSA9IHsKPj4gwqDCoMKgwqDCoCAubnVtX3N1cHBsaWVzID0g
QVJSQVlfU0laRSh4MWVfc3VwcGxpZXMpLAo+PiDCoMKgwqDCoMKgIC5jbGtfbmFtZXMgPSAoY29u
c3QgY2hhciAqKil4MWVfY2xrcywKPj4gwqDCoMKgwqDCoCAubnVtX2NsayA9IEFSUkFZX1NJWkUo
eDFlX2Nsa3MpLAo+PiArwqDCoMKgIC50aW1lcl9jbGtfbmFtZSA9ICJ0aW1lciIsCj4+ICvCoMKg
wqAgLm9wcF9jbGtfbmFtZSA9ICJjb3JlIiwKPj4gwqDCoMKgwqDCoCAuZ2VucGRzID0geDFlX2dl
bnBkcywKPj4gwqDCoMKgwqDCoCAubnVtX2dlbnBkcyA9IEFSUkFZX1NJWkUoeDFlX2dlbnBkcyks
Cj4+IMKgIH07Cj4gCj4gWWVzIGJ1dCBzcGxpdCBpdCB1cCAtICJyZW1vdmUgaGFyZCBjb2RlZCB0
aW1lciBhbmQgb3BwIG5hbWVzIiAtIGFjdHVhbGx5Cj4geW91IHdhbnQgdG8gbWFrZSB0aGUgT1BQ
IG9wdGlvbmFsIG5vID8gSW4gd2hpY2ggY2FzZSB5b3UnZCBleHBlY3QgdG8gc2VlCj4gYSBwYXRj
aCB0byBtYWtlIE9QUHMgb3B0aW9uYWwgLSBpbnN0ZWFkIG9mIGZvbGRpbmcgdGhhdCBpbnRvIGEK
PiBmdW5jdGlvbmFsaXR5IGRyb3AuCj4gCj4gQmVjYXVzZSBzYXkgd2Ugd2FudCB0byByZXZlcnQg
b3IgcmUtb3JkZXIgdGhlIGFkZGl0aW9uIG9mIExlbWFucyBpbiB0aGUKPiBnaXQgbG9nIC0gd2Ug
dGhlbiBoYXZlIHRoZSBwcm9ibGVtIG9mIG1peGVkIGZ1bmN0aW9uYWxpdHkuCj4gCj4gT3Igc2F5
IEkgd2FudCB0byBjaGVycnktcGljayBhIGJhY2twb3J0IC0gSSBkb24ndCBuZWNlc3NhcmlseSB3
YW50IHRvCj4gaW5jbHVkZSBsb3RzIG9mIFNvQyBzcGVjaWZpYyBzdHVmZiB0aGF0IGRvZXNuJ3Qg
YWZmZWN0IG15IHBhcnQuCj4gCj4gPT4gTW9yZSBncmFudWxhciBwYXRjaGVzLgo+IAo+IC0tLQo+
IGJvZAoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LXBoeQo=
