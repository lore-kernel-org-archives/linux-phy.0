Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 516DBCCF9E3
	for <linux-phy@archiver.kernel.org>; Tue,  4 Nov 2025 16:17:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:Subject:References:Cc:
	To:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/WHrHjpRN0MgwsBPFtqII7N8HvYnOrmd1v9VxKKg5g=; b=vzahdYEoNoj20E
	3G+3WolWnPPtqt0lLN3TMtk5+LS4apU4y64Cki/cbGjGw3zpCjJdFdpYv1r0T9jzySAErYrNWUL/Q
	SqjuDT0Yy5oVD/lY/waL8Oyu0+n3DrV/xpgyeo2eQunAxe+UKEuAdH4zBwE5b3R05py/12MvipNeX
	m4zELAXogmAxi5an4SfNOYycRFkIOJ2GtWIJ0akBg/IQHFLPDzca/KirS71ncV1EJrZY4VwkENjCu
	Of6YY7TeH491Gdxjef/OujzXPuXSuFfmoutXMcT3mEViu8h8pmgoABzLOpdt4PKifAfBtINeTW24T
	Qfmc52XRAHwAp0ZbR3Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGJjF-0000000CB1I-3vVS;
	Tue, 04 Nov 2025 16:17:53 +0000
Received: from mout.web.de ([217.72.192.78])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGJjD-0000000CB0j-42Ed
	for linux-phy@lists.infradead.org;
	Tue, 04 Nov 2025 16:17:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=web.de;
	s=s29768273; t=1762273049; x=1762877849; i=markus.elfring@web.de;
	bh=r39kANUj5VvKIJ3ymJeUJVy48rMlc2POJyuRfmemJ7A=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:To:Cc:References:
	 Subject:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:
	 cc:content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=T+15bVlZvcaRD8WOC0HEY/nzyTAm5LvdMNitRI+p1GW8ko0yrF82kMIT2UenAKiY
	 eNmilHq3otiStPIXShVw0va192eAjlSWHKU0b6RJ0Lm9oE9EWqGrb1PzgsFlcdNj9
	 MfWl+I6UQHRGVqsVwJvtW2tbKZiaj0chwjhjBo9hL+bC3OZz59u7mdsjGr7xvfr5E
	 U17Z59cPLom6A5cR2Jhn+yFW1yWb/1ABZ2MufBJgM7PUPty84JLbdLfr7hM+CPuuv
	 8wLuRrVYNMrf4gBIFSOiWa3yNMetUQJWYOHznH45ow8O9TfjmrjB5XWHibD/cuPbu
	 6q1b6EFWxWWDbi0W4w==
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [192.168.178.29] ([94.31.92.227]) by smtp.web.de (mrweb105
 [213.165.67.124]) with ESMTPSA (Nemesis) id 1Melf5-1vr1S81HPx-00ZkeP; Tue, 04
 Nov 2025 17:17:29 +0100
Message-ID: <b6e7eb42-b5eb-4f68-a156-0895d4adbd77@web.de>
Date: Tue, 4 Nov 2025 17:17:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: make24@iscas.ac.cn, linux-phy@lists.infradead.org,
 linux-tegra@vger.kernel.org
Cc: stable@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, JC Kuo <jckuo@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>, Vinod Koul <vkoul@kernel.org>
References: <20251104012820.35336-1-make24@iscas.ac.cn>
Subject: Re: [PATCH v2] phy: Fix error handling in tegra_xusb_pad_init
Content-Language: en-GB, de-DE
From: Markus Elfring <Markus.Elfring@web.de>
In-Reply-To: <20251104012820.35336-1-make24@iscas.ac.cn>
X-Provags-ID: V03:K1:CLOvYMk5GHbFJI9ycjEcmujHpGOOYLrRI9EKtgC3q685+gyNntj
 2dLxLA2nS8hepdRUSVbUxkBBDaKHuRqwbOD7WWXrcnbSKhlniUj3x0UNiwqjyNT8XNH3G8i
 z6Qz2SHlYMcW8LiPPuqCQ/F4rgcHaMnxf/MxthIBuE5DMIhF75g5dR/t7o3WwgtXCY5VZvi
 6B+yDPTb5nDdNv4+agOvA==
UI-OutboundReport: notjunk:1;M01:P0:jWc19b735zQ=;pxreHE1WMQTh5fh6gJBEHnGEYUw xPtWD4dQ0wOyOyYGAW7kQQDAXUM89ZciLUrYSafEKZyQyMwQjGA5EB7bik9jna1P+CNrUnATS hXlIPc3iRTHT6ow1X0SMRUVxi0lFwGRq5IUNRAlroiNWv43Gq7qUNPu5YxDTAdTMCZ+rLPJBa lR1G2ZeZ94uS2dV8Mv9NHR1Fs6yhw2p8Pu+bzY3um6/6IEQc1KpZ1bUw2sHySgFnlbG2g+xTf 3p2LO0he/2E6EY2LBum9kx0fiM+VJoSBFTtqXPvkKOzBA5lzLuecFDjpvhM78GA5yucjifx3Z j1BJQD7K23R+0Tx2G6ykX84rmWPvXqclf9P4YmJn5wxeVjn4KIzZQ/dx2i0IKAFf14yXgPG8r 37YX6bQ5TYotc3YT/ZHy3Zyzr3dog83HFLtjipL92AmMB8eSFrWnuceLWZEVqtbM0ic8qaYT0 Ju1g4B4a3/hpL5BJ2sQMPzz2YXpj+/uFTMzhZdIVQ+igqPvPkhi60KlXxa53Ycfc6vbK3pezR ef9xSO2oqvsLGWwQr4pqImngl352NRkCfcVGPnnDwdBTC2RGOmbKrJhXVD1aUiQ2XMka7BBot DchuXOAnG26aIOHCOOpfgiCMUtNru7wjMCyeKYgQzZUh1WfnpLDhOBKhZrYx+tphyYkddL07w 47p7bkExEk66VIn26tecvARaL9Jhe8l43f/RxqTXA08evxxIEKhTs27E1gXBDcRuK/LJOUeAr dDA0SDbxJkzpI/7R9zz8AGm7k098uDo33Kg2iGpDST+AGnPDtXLqYr/MPJFwmHY8AoV812S7D jCCsJiEzreh1lNVsts4KAYSlVhD6JBEyLTHQithtRoqpSBjkooaEjwkRsnq17vnKzKO7Nb+Ah CfgzE7uiR8CIr7qN9NIu2++1ehH0ZIcmaJPQcN1KPOQ9aWXkTxyQeiIU8EbhP7LJCoO9vJtT7 32O+LOdkKgLYrLad/eT2WRmDU4qszEjtH/4zZyq9MuP7F7nM2neWNtuGziUEmlu5zFcts9i/r lRBpg1+oeL35IX9Rip4XmpUNyRNGDmCyIyphm+I4e6G0uJ74BzbugdP2EPxzYO7otkhTzrXZ0 ihQY0frKQ/KokU+ia8PmEgp3LQ2HGUH7C7Jj5kW7E8Ffj1kvGhFAjOw2QGt5VTuKyPpPPnlRu EMSrv5AV6kblZLdBOkyWmeD95Hn8JHZCnDhndEFXYQcYtR1pOpH8Oi9arOGxikG1+RW+XRbMp 2bKkzaqaPoSVrb7UAGt3z423ro/9bQe01BmcLMhRSeLi2D8SLDLcKeM4g/fF0ZMZ52WzmX6pd conzbnJinsKM1H90JMfDeFRvNb+OqlQy20PdOI5uCeVfaMlu5lgzVMivS018WKd4m7qS30h2p XVxQRbMIYl8hs2H9DaR488bg3UGmBZCp2Mm3ab8+jOsuegz2NB8chNtPh5sXS8BYXfN9ALsVs +CMGKl0vHqJamwplNUAv+9j60qh/fWrweDcSM6lq3cr6QYRL/b0KjU/rric1dDmkO3JDbmmz6 CabHdmzDBQzwCY8fuY9/HkoZZ/ypYlS1XZ8CFz6/zIphvbypu+9eYAPWhfTQMkzw7pZVCVW1/ ZAufyKcvQu75nskW1MeYeScalB7W5oewkWcURTNJEcdF3xAuPia80FmoOANAdq9Q+aRxiMDjh zCEhVaBZ2kffir7Cm59pNHuLaig5dTKzNAtIkXgGJ0+Ktz/668gcONpdNDS2zVajv2bFLYA10 oPIzEGvPBh7beM16kE/Hts9dtrS/SOD7UcXtwvRpgBGxocx4SFn/EDVACtRO/SLUBXo7y5j14 GCQ82xnH6ppwGVaUMgqGLzhNI1LqO66RN2XlB/jvpuZe1cJ2MZ5ggMmzgGlxEX/40ymEzule+ PtFP5/Fy/Ri915Bd4iRe27eaR4Wly7w4YbwBgGp2WhoEOwOQSEPyQSkp7Hf1T54hzRmQMy5TL j9Mmz22gj0S5HaWMXSjiIUjfa6eZCzaWcDdemPTKyDdDkOUkJdUepvyqajvtnzd3rkSd1zzTI xzunG9Z0UHt4iyjVT5t3DSfu+lxJr62fhCbMdv1+jJSR/smh3oLjSkxBkHEQY3+h1hJwjjT3M 1/JaNUmsoRBq6rqg+AcAdXnfNq9pUZ9FcXFp0a+rrX+VH5PK3xS0Hn8qrW5FIsdU1AGndmU5r /1dHiS1EeDFcC9Kksb3mL8sAjbVeoVHycffMuFVJXOY7UT81UjrSvet/HJj4acu0vJorsC/Ay XQE5Dy1cwGuE52S849siLkPoTb3dmkNx5NyD67eVUBS2jtFSGc6vbTOq/ftj29RlJBtYoSurb Bk/wivbfDJa0kXopjWK+Tcke1U1NNqq7bLi+nESw8lSD1HCRw3g/VBIj8kR4WJeQAhC4XFk28 TD3athBI+q3RSDA8Y/f6rPrYAPgBfXlWEsny7hetYkIQDHAJD4w7hbbBsl0HHdP8wEzu8N1/x GgrSLGq3tSckd3LRWZwDU/SDfK/Ef73rnZaX3wfN8TLBapQ8duq03N0w68fTkPXzjzTfdlqq1 fNpMED2s5HNfSGhWvefSDk3BR0P5CWt4MhjhS05fflktb3xPDYkkgzMZqV7CkM/v8aLKyqJ4a sA95sofzodHkCsL6cxaP5sGTpHDAsr+ucZe8XXkmYBzNW3jSBRylD2t/IjQW5GDUHvRnHXG3X r7S7rBeeR2Y6fEPHG95gbkStBQLLO+giw+SBewS2CuGdycCc+wBFlcSmmXfvApXjjGLhtLNtq Jxdzt6SYmsZDROzcQ/Pn/wsEWpGKhwW6KR26qlCFJOhBJ69wD/OEjDrkd2KNe4thsSwJO9fDf lMJIAhT0/3wEMtKwG6fl5Vn6UK5twSEKQd9I8x0cgGFlTEpB7i8MB41OWwacBYbiepA19Z5Y/ 157L0qav23mdcySNAbWMa5ug+YBDhsnKVTBVuVEZxA85LUFxkEPXg0yWX6sIFmJlX8ga6O3FN 1j+Sm35HPp8EDrqXEn3MzZlwALmS4a6bAo+s/z3GeElck1Lpoo25jNfxko9WBoodGVFeOt8tx 2uIDq50b8t2dLzlnuIyzaFwf7WOgE2Zl2fT8jqhZTsTV/20aOPrDFxH3QXN7Y1RjRPoOWTteZ wZ0OUNuxInDaHf4MWVLD0d1yJBZAksDAUYKCt+R+zQUE+PuIFMHQfnyDPYJuzFMqo66yEFM97 4NeHNgP1o4o9jg2ZJYikChYN9f+SLK2T9pLR/M0ZBGzABOQ5fHEwqSE7FpMrqMWww/B8Z8MJR YfnpsR4801FePHe3bmIvKUa+yb+yiXr5GB1cnBRgFkYq14F+iCmTcxMKgT6sgcl4s8A1pOKZX iJALxXhjPk8c1odrdUtbb5eL1oEjf/xviQWBh1seHKdihaABWRGkjFBX/UT7lW91P4znX/W3z 0PLSmtD2fje59XZwJbaA3mZunDVHn2norVvIoHKXaPXxh0Z4d1uSAWLr2juYXtE4CvFVTW+Kj Bx/cIAojGfHp9OecxjuDAc0wRShOb0ugtyaKJ6qZmocSKWEh3o95UI/f54C+d/xVasuCGzSil aoTtcqNFIJdNnl3JJaUYZdYzU2Enw5sqsUnphZI6ktjPXrHRkhIRX8rSp2i1PCQ2iwA7YtRhh soBaYUjv0r04l3pDM6LrIKMcfcDoX+FhqquAG/KwMjq/WvxDqU7FERZOQoNZzhU+iprOKHeE4 YCpUKnnK3qBqeCiBiUCJkps/acSZqUAmP2hN28vwcR4pU03KrR6CbGWKvUhdEkdlfH5wODzOJ I9kaVunNOjetHAfdX0iMCY5RutxVxNMYIfymsmwzspUmvCHqdmW4sLFuda2u7CzkxdqlqQqlP DtIqYGFI3R2OiPlxKM1AlelFyz2bmDTxEasK0fGV4d7mQjoRjNWJmuUpuU/ajWoFcvjEtgh9s
 +kd1640QgeYGVo0Wsb5tA9yQeXyeEvb9sHd+NLYx4zQT1Cqp9ya2N19fyhRtLmiszi7s55Z/U bLLW154ROA5AJbGiXSDEAXCzbMoKWgg745YBeIkAHjcHk49FoThlr5WxyH66WqJsr1fupqMDF vLgDlzUN7mUsnyb5vr71Ggs9HlvcZp5U1z3/Ln+Zcpkz4drddpc9MKynZWHmrZi165+AEt+PO +vsmOM9h+DcHPV6+jP/iko45IiI84cjvH2zZ3JKWUgHHWjbjqZeagiSNovWf0FitjrI+Pfpc9 nM+mdk4u11zohIq3DzqdMvYr7a0U+IrW5xpn/tTwKUdcsB8HFt/lIrd9Ew08kb3W7vPvlbKF3 Z5qobPTE0doW4qE9OMciDRWFm3Yid8RlDC/OLUxW35GmMjO6/cpMGNkDxJM7sm0Rt30B8+uYF X6eX/8mc2KH9I3ZUiezmo+j4qxsiB+eiWK0ZqJ3RN46UCYGK7JpLLuTBbVcJt2nDL4WK3WtSV ohce5NtRxOsaXxVI5+KykgF6wL//5kgW3iFkFdlXmNnpNB67hqddcZWaAItL/Nkb5+WVIV3tI 45LhgoAAz4+OVLWfzEB9A1W/28rMpcU6XTFq3MZmRvdAgioDsxaMj82XmcgblOjhv/bvNUxm9 hffsdsAfQ0KXHn913iiqkIA3UtM+t1uEiAaIx1dsKmz40ASBsIM1fOU92rMTF1aqkYVPjd8/8 GDF8NOnhja0mqwktqCL4aSnQEGyHCiYt4nN8EpGakZA6G2mFmNQccUEQt41IUylCDmolxPwzT /fqkFHYI08Jmb7K8TWDAKVO2+0besZ1GtaBFQCkXSCuRhcPJyshPQ30SDMOLfv72yUXN09QqO /nINkXomGrLo9TdZwGteX5upWT5fRjdwzU5N1cSmhrkmM0xU+ujPg0C1zDzroV7uOFi+DrJ0j gjWfOrNRb5Sf9A2fwaFn2PmJ/0Af4EIK60+RReI9Qaig8bGNJcJ+WPnGGpFhfRSdIwCYZduEq UMV0Qh86Luqr2cReL4h3STwkrz4gHUST3KiSiBjnsxrviXPXlyfxMAieHOlypm180MWdvVSju 9GiU2YFX+cu5snoNxr2SyCwR6BrQrOGSMLEof/5ehC5JZgufMpdD1V6oGDA3FDu4GzOP8JO0r m4T9C4KTiKgADmTybLNVqbJJQM=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251104_081752_354145_D8FD8DA7 
X-CRM114-Status: UNSURE (   4.65  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

4oCmCj4gSW4gdGVncmFfeHVzYl9wYWRfaW5pdCgpLCBib3RoIGRldl9zZXRfbmFtZSgpIGFuZCBk
ZXZpY2VfYWRkKCkgbWF5CuKApgoKV291bGQgaXQgYmUgaGVscGZ1bCB0byBhcHBlbmQgcGFyZW50
aGVzZXMgYWxzbyB0byB0aGUgZnVuY3Rpb24gbmFtZQppbiB0aGUgc3VtbWFyeSBwaHJhc2U/CgpS
ZWdhcmRzLApNYXJrdXMKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXBoeQo=
